// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import $ from 'jquery' 
import axios from 'axios'

import { csrfToken } from 'rails-ujs'

axios.defaults.headers.common['X-CSRF-Token'] = csrfToken()

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener('DOMContentLoaded', () => {
    $('#next-memorandum').on('click', () => {
          axios.get('/memorandums/1')
        .then((response) => {
            const memorandom = response.data
            $('#phrase-content-area').text(`${memorandom.content}`)
            $('#phrase-info-area').text(`${memorandom.source} ${memorandom.tag}`)

        })
      })
  })