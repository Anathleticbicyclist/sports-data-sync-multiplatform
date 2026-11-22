package com.jichi.ob.coordinator

import android.util.Log
import android.view.View
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.appbar.MaterialToolbar
import com.google.android.material.bottomnavigation.BottomNavigationView
import com.jichi.ob.MainActivity
import com.jichi.ob.R
import com.jichi.ob.model.DataSource

/**
 * P1 Step 1: 页面导航协调器——8 个 Fragment 的创建/恢复/切换与全屏覆盖页出入。
 * Fragment 实例字段仍在 MainActivity（internal），导航逻辑在此。
 */
class FragmentNavigator(private val activity: MainActivity) {

    companion object {
        private const val TAG = "JichiOB"
    }

    internal fun initFragments() {
        activity.loginFragment = com.jichi.ob.ui.LoginFragment()
        activity.settingsFragment = com.jichi.ob.ui.SyncSettingsFragment()
        activity.syncFragment = com.jichi.ob.ui.SyncFragment()
        activity.aboutFragment = com.jichi.ob.ui.AboutFragment()
        activity.recordFragment = com.jichi.ob.ui.RecordCenterFragment()
        activity.mergeFragment = com.jichi.ob.ui.MergeFragment()
        activity.labLoginFragment = com.jichi.ob.ui.LabLoginFragment()
        activity.createTaskFragment = com.jichi.ob.ui.CreateTaskFragment()
        try {
            val tr = activity.supportFragmentManager.beginTransaction()
            tr.add(R.id.fragmentContainer, activity.loginFragment, "login")
            tr.add(R.id.fragmentContainer, activity.settingsFragment, "settings").hide(activity.settingsFragment)
            tr.add(R.id.fragmentContainer, activity.syncFragment, "sync").hide(activity.syncFragment)
            tr.add(R.id.fragmentContainer, activity.aboutFragment, "about").hide(activity.aboutFragment)
            tr.add(R.id.fragmentContainer, activity.recordFragment, "records").hide(activity.recordFragment)
            tr.add(R.id.fragmentContainer, activity.mergeFragment, "merge").hide(activity.mergeFragment)
            tr.add(R.id.fragmentContainer, activity.labLoginFragment, "lab").hide(activity.labLoginFragment)
            tr.add(R.id.fragmentContainer, activity.createTaskFragment, "createtask").hide(activity.createTaskFragment)
            tr.commitNowAllowingStateLoss()
        } catch (e: IllegalStateException) {
            // v8.5.6: 极端情况下FragmentManager已恢复同名Fragment，回退到restore
            Log.w(TAG, "initFragments add 冲突，改用 restore: ${e.message}")
            restoreFragments()
        }
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        bottomNav.setOnItemSelectedListener { item ->
            when (item.itemId) {
                R.id.nav_login -> showFragment(activity.loginFragment)
                R.id.nav_settings -> showFragment(activity.settingsFragment)
                R.id.nav_sync -> showFragment(activity.syncFragment)
                R.id.nav_about -> showFragment(activity.aboutFragment)
            }
            true
        }
        bottomNav.selectedItemId = R.id.nav_login
    }

    /** v8.5.6: Activity重建恢复Fragment引用（不重新add，由FragmentManager自动恢复） */

    internal fun restoreFragments() {
        activity.loginFragment = activity.supportFragmentManager.findFragmentByTag("login") as com.jichi.ob.ui.LoginFragment
        activity.settingsFragment = activity.supportFragmentManager.findFragmentByTag("settings") as com.jichi.ob.ui.SyncSettingsFragment
        activity.syncFragment = activity.supportFragmentManager.findFragmentByTag("sync") as com.jichi.ob.ui.SyncFragment
        activity.aboutFragment = activity.supportFragmentManager.findFragmentByTag("about") as com.jichi.ob.ui.AboutFragment
        activity.recordFragment = activity.supportFragmentManager.findFragmentByTag("records") as com.jichi.ob.ui.RecordCenterFragment
        activity.mergeFragment = activity.supportFragmentManager.findFragmentByTag("merge") as com.jichi.ob.ui.MergeFragment
        activity.labLoginFragment = activity.supportFragmentManager.findFragmentByTag("lab") as com.jichi.ob.ui.LabLoginFragment
        activity.createTaskFragment = activity.supportFragmentManager.findFragmentByTag("createtask") as com.jichi.ob.ui.CreateTaskFragment
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        bottomNav.setOnItemSelectedListener { item ->
            when (item.itemId) {
                R.id.nav_login -> showFragment(activity.loginFragment)
                R.id.nav_settings -> showFragment(activity.settingsFragment)
                R.id.nav_sync -> showFragment(activity.syncFragment)
                R.id.nav_about -> showFragment(activity.aboutFragment)
            }
            true
        }
    }

    // v8.2.3.5: 新建任务引导——切到设置页（设置页=任务配置页，调好来源/目标/参数后点「保存为任务」）

    internal fun switchToSettingsTab() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        bottomNav?.selectedItemId = R.id.nav_settings
        Toast.makeText(activity, "在设置页选好来源/目标后，点「保存为任务」", Toast.LENGTH_LONG).show()
    }

    // v8.2.3.5: 设置页保存任务后，刷新同步页任务列表

    internal fun refreshTasksFromSettings() {
        try { activity.syncFragment.refreshTaskState() } catch (_: Exception) {}
        try { activity.settingsFragment.refreshTaskState() } catch (_: Exception) {}
    }

    // v8.2.1: 记录中心入口（关于页横条调用；全屏覆盖页，不占底部导航高频位）

    internal fun openRecordCenter() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().show(activity.recordFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
        try { activity.recordFragment.refresh() } catch (_: Exception) {}
    }

    internal fun closeRecordCenter() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().hide(activity.recordFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // 返回关于页（记录中心入口所在页）
        try { showFragment(activity.aboutFragment) } catch (_: Exception) {}
    }

    // v8.2.1: 实验室登录入口（关于页横条调用；独立页面，可返回，不占底部导航）

    internal fun openLabLogin(platforms: List<com.jichi.ob.model.DataSource>) {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().show(activity.labLoginFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
        try { activity.labLoginFragment.refreshStates() } catch (_: Exception) {}
    }

    internal fun closeLabLogin() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().hide(activity.labLoginFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // 返回关于页（实验室入口所在页），并刷新登录页/设置页状态
        try { showFragment(activity.aboutFragment) } catch (_: Exception) {}
        try { activity.loginFragment.updateStatus() } catch (_: Exception) {}
        try { activity.settingsFragment.refreshLoginState() } catch (_: Exception) {}
    }

    // v8.2.2: 新建任务向导（设置页「＋新建同步任务」横条入口；全屏覆盖页，可返回）

    internal fun openCreateTask() {
        // v9.6.9: 2026-10-07 日期拦截已删，改走体验码门禁（用户选方案 A）；
        // 有码进向导，没码弹体验码框（可点“暂不使用”关掉，主界面照常用）。
        activity.checkTrialAndRun { openCreateTaskInternal() }
    }

    private fun openCreateTaskInternal() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().show(activity.createTaskFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
    }

    internal fun closeCreateTask() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().hide(activity.createTaskFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // v8.2.3.8: 返回打开向导前的 tab（不再硬编码设置页；底部高亮与页面保持一致）
        when (bottomNav?.selectedItemId) {
            R.id.nav_login -> showFragment(activity.loginFragment)
            R.id.nav_settings -> showFragment(activity.settingsFragment)
            R.id.nav_about -> showFragment(activity.aboutFragment)
            else -> showFragment(activity.syncFragment)
        }
        try { activity.syncFragment.refreshTaskState() } catch (_: Exception) {}
        try { activity.settingsFragment.refreshLoginState() } catch (_: Exception) {}
    }

    private fun showFragment(target: androidx.fragment.app.Fragment) {
        val others = listOf(activity.loginFragment, activity.settingsFragment, activity.syncFragment, activity.aboutFragment, activity.recordFragment, activity.labLoginFragment, activity.createTaskFragment).filter { it !== target }
        val tr = activity.supportFragmentManager.beginTransaction()
        for (o in others) tr.hide(o)
        // v8.5.6: 视图回收后show不重建→空白。包try-catch防止状态异常崩溃。
        try {
            when {
                target.isDetached -> tr.attach(target)
                target.view == null && target.isAdded -> tr.detach(target).attach(target)
            }
        } catch (_: Exception) {}
        tr.show(target).commitNowAllowingStateLoss()
        // v7.7.7: 登录页隐藏顶部Toolbar，品牌横幅顶置，页面以登录为主（一屏放下）
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        toolbar?.visibility = if (target == activity.loginFragment) android.view.View.GONE else android.view.View.VISIBLE
        // v7.7.4: hide/show 不触发 onResume，切到设置页时手动刷新来源/目标网格（登录/注销后即时生效，无需重启）
        if (target == activity.settingsFragment) {
            try { activity.settingsFragment.refreshLoginState() } catch (_: Exception) {}
        }
        // v8.2.0: 切到记录中心时强制刷新（同步后立即显示新缓存）
        if (target == activity.recordFragment) {
            try { activity.recordFragment.refresh() } catch (_: Exception) {}
        }
    }

    // ============ v7.9.7 轨迹合并：全屏覆盖页 ============

    internal fun openMerge() {
        // v9.6.9: MergeTrial 日期限制已废除（2026-09-30 已过），合并改走体验码门禁；
        // 与 v9.6.8 APK 行为一致（checkTrialFeature + pendingOpenAfterTrial），
        // 有码进合并页，没码弹体验码框（可点“暂不使用”关掉，主界面照常用）。
        activity.checkTrialAndRun { openMergeInternal() }
    }

    private fun openMergeInternal() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().show(activity.mergeFragment).commit()
        bottomNav?.visibility = android.view.View.GONE
        toolbar?.visibility = android.view.View.GONE
    }

    internal fun closeMerge() {
        val bottomNav = activity.findViewById<com.google.android.material.bottomnavigation.BottomNavigationView>(R.id.bottomNav)
        val toolbar = activity.findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.toolbar)
        activity.supportFragmentManager.beginTransaction().hide(activity.mergeFragment).commit()
        bottomNav?.visibility = android.view.View.VISIBLE
        toolbar?.visibility = android.view.View.VISIBLE
        // 返回同步页（合并入口所在页）
        try { showFragment(activity.syncFragment) } catch (_: Exception) {}
    }

    /**
     * 合并页拉取活动列表。
     * - 未指定日期范围：只拉最近一页（30 条），秒开不卡；
     * - 指定日期范围：从最新翻页拉取直到覆盖范围（记录日期早于 fromDate 停止，上限 1000 防卡），再按范围过滤。
     */
    /** 合并页记录分页结果 */

}
