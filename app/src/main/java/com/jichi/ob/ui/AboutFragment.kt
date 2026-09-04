package com.jichi.ob.ui

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.jichi.ob.R

/**
 * v7.6.2: 四页面布局 - 页面4 关于页
 * Logo/版本/更新日志/鸣谢/赞赏码/链接
 */
class AboutFragment : Fragment() {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.fragment_about, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        view.findViewById<TextView>(R.id.tvClubLink)?.setOnClickListener {
            startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(
                "https://outbase.cn/zeusfit/zeusfit-mk/sharePage.html?_bid=1005477&type=club&clubId=MTAxMjgz&timestamp=1787569599904&sign=b4604ad9041551e64ce90ea385a0029f"
            )))
        }
        view.findViewById<TextView>(R.id.tvUpdateLink)?.setOnClickListener {
            startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(
                "https://github.com/Anathleticbicyclist/sports-data-sync-multiplatform"
            )))
        }
    }
}
