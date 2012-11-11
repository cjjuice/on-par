#!/bin/bash

rails g model palendar day:integer start_time:integer end_time:integer player:references
rails g model valendar day:integer start_time:integer end_time:integer venue:references
rails g model venue name:string address:string lat:float lng:float price:integer website:string pic_url:string 
rails g model player name:string address:string email:string dob:datetime gender:string facebook_id:string lat:float lng:float radius:integer 
rails g model match name:string date:datetime venue:references
rails g model invite accept:boolean sup_bro:boolean player:references match:references
