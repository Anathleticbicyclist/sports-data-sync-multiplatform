package com.jichi.ob.ui

import android.content.Intent
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
import android.widget.TextView
import androidx.fragment.app.Fragment
import com.jichi.ob.R
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
    }
}
