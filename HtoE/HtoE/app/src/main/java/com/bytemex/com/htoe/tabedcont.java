package com.bytemex.com.htoe;

import android.content.pm.ActivityInfo;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;

import java.util.ArrayList;
import java.util.List;

public class tabedcont extends AppCompatActivity {
    private ViewPager mViewPager;

    private android.support.v4.app.FragmentManager fragmentManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tabedcont);
        //seleccion de orientacion
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        //declara
        ViewPager viewPager = (ViewPager) findViewById(R.id.container);
        TabLayout tabLayout = (TabLayout) findViewById(R.id.tabs);
        //seleccion de icono
        tabLayout.addTab(tabLayout.newTab().setIcon(R.mipmap.ic_map));
        tabLayout.addTab(tabLayout.newTab().setIcon(R.mipmap.ic_search));
        tabLayout.addTab(tabLayout.newTab().setIcon(R.mipmap.ic_search));
        ColorStateList colors;
        if (Build.VERSION.SDK_INT >= 23) {
            colors = getResources().getColorStateList(R.color.black, getTheme());
        } else {
            colors = getResources().getColorStateList(R.color.black);
        }

        for (int i = 0; i < tabLayout.getTabCount(); i++) {
            TabLayout.Tab tab = tabLayout.getTabAt(i);
            Drawable icon = tab.getIcon();

            if (icon != null) {
                icon = DrawableCompat.wrap(icon);
                DrawableCompat.setTintList(icon, colors);
            }

        }


        //seleccion de fragmento
        PagerAdapter adapter = new PagerAdapter(getSupportFragmentManager());
        adapter.addFragment(new camb11());
        adapter.addFragment(new camb12());
        adapter.addFragment(new camb13());
        //cambio de fragmento
        viewPager.setAdapter(adapter);
        viewPager.addOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(tabLayout));
        tabLayout.setOnTabSelectedListener(new TabLayout.ViewPagerOnTabSelectedListener(viewPager));

    }
    class PagerAdapter extends FragmentPagerAdapter {

        private final List<Fragment> mFragments = new ArrayList<>();

        public PagerAdapter(FragmentManager fm) {
            super(fm);
        }

        public void addFragment(Fragment fragment) {
            mFragments.add(fragment);
        }

        @Override
        public Fragment getItem(int position) {
            return mFragments.get(position);

        }

        @Override
        public int getCount() {
            return mFragments.size();
        }

    }


}
