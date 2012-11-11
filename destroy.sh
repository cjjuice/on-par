#!/bin/bash

rails destroy model palendar
rails destroy model valendar
rails destroy model venue
rails destroy model player
rails destroy model sport
rails destroy model match
rails destroy model invite

rake db:drop
