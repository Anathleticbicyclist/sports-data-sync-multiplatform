package com.jichi.ob.ui

import android.app.Dialog
import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.ColorDrawable
import android.net.Uri
import android.os.Bundle
import android.text.SpannableString
import android.text.Spanned
import android.text.method.LinkMovementMethod
import android.text.style.ClickableSpan
import android.text.style.ForegroundColorSpan
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.view.Window
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.jichi.ob.R
import com.jichi.ob.util.UpdateChecker
import androidx.core.content.ContextCompat

/**
 * v7.6.2: 四页面布局 - 页面4 关于页
 * Logo/版本/更新日志/鸣谢/赞赏码/链接
 * v7.6.4: 底部链接改为"黑色文字+蓝色超链接"混排
 */
class AboutFragment : Fragment() {

    private val clubUrl = "https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f"
    private val githubUrl = "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform"

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_about, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        val blue = ContextCompat.getColor(requireContext(), R.color.primary)

        // 第一行："鸡翅幸哲迈进OB同步工具:"(黑色) + "开发者俱乐部"(蓝色可点击)
        val clubText = "鸡翅幸哲迈进OB同步工具:开发者俱乐部"
        val clubLinkWord = "开发者俱乐部"
        val clubSpannable = SpannableString(clubText)
        val clubLinkStart = clubText.indexOf(clubLinkWord)
        clubSpannable.setSpan(object : ClickableSpan() {
            override fun onClick(widget: View) {
                startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(clubUrl)))
            }
        }, clubLinkStart, clubLinkStart + clubLinkWord.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        clubSpannable.setSpan(ForegroundColorSpan(blue), clubLinkStart, clubLinkStart + clubLinkWord.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        val tvClub = view.findViewById<TextView>(R.id.tvClubLink)
        tvClub.text = clubSpannable
        tvClub.movementMethod = LinkMovementMethod.getInstance()

        // 第二行："➠更新地址鸡翅幸哲迈进OB（开发体验版） 开发版:"(黑色) + "Github项目"(蓝色可点击)
        val updateText = "➠更新地址鸡翅幸哲迈进OB（开发体验版） 开发版:Github项目"
        val updateLinkWord = "Github项目"
        val updateSpannable = SpannableString(updateText)
        val updateLinkStart = updateText.indexOf(updateLinkWord)
        updateSpannable.setSpan(object : ClickableSpan() {
            override fun onClick(widget: View) {
                startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(githubUrl)))
            }
        }, updateLinkStart, updateLinkStart + updateLinkWord.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        updateSpannable.setSpan(ForegroundColorSpan(blue), updateLinkStart, updateLinkStart + updateLinkWord.length, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
        val tvUpdate = view.findViewById<TextView>(R.id.tvUpdateLink)
        tvUpdate.text = updateSpannable
        tvUpdate.movementMethod = LinkMovementMethod.getInstance()

        // v7.7.6: 检查更新按钮 → 手动检查更新
        view.findViewById<TextView>(R.id.btnCheckUpdate)?.setOnClickListener {
            UpdateChecker.check(requireContext(), force = true)
        }

        // v7.8.0: 开源软件免责声明超链接 → 弹出双语免责声明弹窗
        view.findViewById<TextView>(R.id.tvDisclaimerLink)?.setOnClickListener { showDisclaimerDialog() }
    }

    /** v7.8.0: 免责声明弹窗（圆角淡蓝边框、内容可滚动、中英双语） */
    private fun showDisclaimerDialog() {
        val dialog = Dialog(requireContext())
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE)
        val content = layoutInflater.inflate(R.layout.dialog_disclaimer, null)
        dialog.setContentView(content)
        dialog.window?.setBackgroundDrawable(ColorDrawable(Color.TRANSPARENT))
        dialog.window?.setLayout((resources.displayMetrics.widthPixels * 0.86f).toInt(), ViewGroup.LayoutParams.WRAP_CONTENT)
        content.findViewById<TextView>(R.id.tvDisclaimerContent).text = DISCLAIMER_TEXT
        content.findViewById<TextView>(R.id.btnDisclaimerClose).setOnClickListener { dialog.dismiss() }
        dialog.show()
    }

    companion object {
        /** v7.8.0: 开源软件免责声明（软件内弹窗版，中英双语，律师角度规避风险） */
        private val DISCLAIMER_TEXT = """
【开源免费 · 仅供交流学习】
本软件为个人开发者维护的免费开源项目，仅用于骑行运动数据跨平台互通的交流学习之目的，不用于任何商业用途。您可自由使用、学习、传播本软件，但需遵守相应开源许可条款。

【非官方关联声明】
本软件与 iGPSPORT（迹驰）、迈金、黑鸟单车、行者、捷安特、高驰、佳明、Wahoo、Outbase 等平台，以及 OneLap、Strava、Intervals.icu 等，均无任何隶属、合作、授权或背书关系，并非上述任一平台的官方出品。文中平台名称、商标归其权利人所有。

【风险自担 · 无担保】
本软件按"现状"（AS-IS）提供，不附带任何明示或默示担保。因使用本软件（包括但不限于数据同步、格式转换、登录、上传、下载、自动同步等）而产生的数据偏差或丢失、账号异常、平台限制或封禁、第三方索赔等一切后果，均由使用者自行承担，作者不承担任何责任。

【数据与隐私】
本软件不收集您的个人数据，亦不向任何第三方或作者服务器传输您的数据。账号凭证仅保存在设备本地；活动数据仅在您主动触发同步时，上传至您选择的目标平台。

【第三方服务条款】
使用者应自行阅读并遵守各目标平台的服务条款与隐私政策；因使用本软件被某平台认定违反其条款并受到处理的风险，由使用者自行承担。建议合规、适度使用。

【数据准确性】
跨平台同步涉及 FIT/GPX 等格式的解析转换，转换后的里程、均速等数据可能与源平台及官方显示存在差异，请以各平台官方数据为准核对。

【赞赏自愿】
本软件完全免费。页面中的赞赏为自愿、无偿的赠与行为，不构成购买商品或服务的对价，亦不构成任何服务合同关系，不附带任何售后义务。

【版本与变更】
本项目为个人开源项目，作者保留随时修改、更新或停止维护的权利。任何版本的功能与兼容性均可能随各平台接口变化而改变。

—— 中英双语 / Bilingual ——

[Open-Source & Free]
This software is a free open-source project maintained by an individual developer, provided solely for the exchange and learning of cross-platform sports-data synchronization, and not for any commercial purpose.

[No Affiliation]
This software has no affiliation, cooperation, authorization or endorsement relationship with iGPSPORT, Magene, Blackbird, Xingzhe, Giant, COROS, Garmin, Wahoo, Outbase, OneLap, Strava, Intervals.icu or any other platform, and is not an official product of any of them.

[Use at Your Own Risk]
The software is provided on an "AS-IS" basis without any express or implied warranties. All consequences arising from its use (including but not limited to data synchronization, format conversion, login, upload, download and auto-sync), such as data deviation or loss, account abnormality, platform restriction or suspension, or third-party claims, shall be borne solely by the user. The author accepts no liability.

[Data & Privacy]
This software does not collect your personal data, nor does it transmit your data to any third party or author-controlled server. All credentials are stored locally on your device; activity data is uploaded only to the destination platforms you select when you actively trigger a synchronization.

[Third-Party Terms]
Users shall read and comply with the Terms of Service and privacy policies of each destination platform. Any risk of being deemed to violate such terms and of resulting measures shall be borne by the user. Please use in a compliant and moderate manner.

[Data Accuracy]
Cross-platform synchronization involves parsing and conversion of FIT/GPX and other formats. Converted data (distance, average speed, etc.) may differ from the source platform and official values; please verify against official data.

[Donation]
The software is completely free. Any donation is a voluntary and gratuitous gift, which does not constitute consideration for any goods or services, nor any service contract, and carries no after-sales obligation.

[Version & Changes]
This is a personal open-source project. The author reserves the right to modify, update or discontinue it at any time. Features and compatibility may change with platform interfaces.

本声明以中文为基准版本 / The Chinese version shall prevail in case of any conflict.
        """.trimIndent()
    }
}
