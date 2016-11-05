package com.bytemex.com.htoe;

import android.os.Bundle;

import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class cont1 extends MapFragment implements OnMapReadyCallback {

    private GoogleMap mMap;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
            MapFragment mapFrag= (MapFragment) getChildFragmentManager().findFragmentById(R.id.map);
                mapFrag.getMapAsync(this);

    }

    @Override
    public void onMapReady(GoogleMap googleMap) {
        mMap = googleMap;
        LatLng sydney = new LatLng(-34, 151);

        mMap.moveCamera(CameraUpdateFactory.newLatLngZoom(sydney, 30));
        // Add a marker in Sydney and move the camera

        mMap.addMarker(new MarkerOptions().position(sydney).title("Marker in Sydney"));
        mMap.moveCamera(CameraUpdateFactory.newLatLng(sydney));
        CameraUpdate center=
                CameraUpdateFactory.newLatLng(new LatLng(40.76793169992044,
                        -73.98180484771729));
        CameraUpdate zoom= CameraUpdateFactory.zoomTo(15);

        mMap.moveCamera(center);
        mMap.animateCamera(zoom);
    }
}
