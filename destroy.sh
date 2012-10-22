#!/bin/bash

rake db:drop

rails destroy model palendar
rails destroy model valendar
rails destroy model venue
rails destroy model player
rails destroy model match
