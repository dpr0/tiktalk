// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()

require("jquery")
require("firebase")
require("firebaseui-ru")
import 'bootstrap'
import './stylesheets/application'
import firebase from 'firebase/app';

document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip();
    $('[data-toggle="popover"]').popover()
});

var firebaseConfig = {
    apiKey: "AIzaSyAoEFXqI1LVwdEoX0gIZr-hCFXa_R0pV7M",
    authDomain: "tiktalk-81d25.firebaseapp.com",
    projectId: "tiktalk-81d25",
    storageBucket: "tiktalk-81d25.appspot.com",
    messagingSenderId: "1105901180",
    appId: "1:1105901180:web:3dfe87c719e3ebc37f7bf9",
    measurementId: "G-Z24VQKR27F"
};
firebase.initializeApp(firebaseConfig);
firebase.analytics();

var ui = new firebaseui.auth.AuthUI(firebase.auth());
ui.start('#firebaseui-auth-container', {
    signInOptions: [
        {provider: firebase.auth.PhoneAuthProvider.PROVIDER_ID, defaultCountry: 'ru'}
    ],
    callbacks: {
        signInSuccessWithAuthResult: (currentUser) => {
            $.post('/users/auth/firebase/callback', {
                    authenticity_token: $('meta[name="csrf-token"]').attr("content"),
                    user: {
                        provider: currentUser.additionalUserInfo.providerId,
                        uid:      currentUser.user.uid,
                        email:    currentUser.user.email,
                        name:     currentUser.user.displayName,
                        phone:    currentUser.user.phoneNumber
                    }
                },
                () => window.location.reload()
            );
            return false;
        }
    },
    credentialHelper: firebaseui.auth.CredentialHelper.GOOGLE_YOLO
});

setTimeout(function () {
    $('h1.firebaseui-title').each(function () {
        $(this).replaceWith($('<h3 class="firebaseui-title">' + this.innerHTML + '</h2>'));
    });
    $('.grecaptcha-badge').hide();
}, 2000);

// var componentRequireContext = require.context("components", true);
// var ReactRailsUJS = require("react_ujs");
// ReactRailsUJS.useContext(componentRequireContext);

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
