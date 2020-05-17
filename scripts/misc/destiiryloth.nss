void main()
{

    //NPC TRANSPORTING THROUGH CONVERSATIONS

    //TO INSTALL CREATE A NEW SCRIPT IN A CONVERSATION UNDER ACTIONS TAKEN, COPY THE TEXT BELOW,
    //OVERWRITE ANY PREVIOUS TEXT THAT WAS GENERATED IN THE NEW SCRIPT

    //CREATE A WAYPOINT AT THE AREA YOU WANT YOUR CHARACTER TO TELEPORT TO.  MAKE SURE TO SET A CUSTOM TAG FOR THE WAYPOINT.

    //WHERE IT SAYS "YOURWAYPOINTHERE", CHANGE IT TO WHATEVER YOU MADE THE TAG OF THE WAYPOINT YOU PREVIOUSLY MADE
    //EXAMPLE: "wp_theinnercity"

    //AREA_TRANSITION_CITY MODIFIES THE LOADING PICTURE.  TO CHANGE IT, JUST CHANGE CITY TO WHATEVER TYPE OF TERRAIN THE AREA
    //YOU WILL BE TRANSPORTED TO IS.
    //EXAMPLE: AREA_TRANSITION_RURAL

    //YOUR DONE!  FOR BEST EFFECTS, USE WHEN TAKING A "CARAVAN", OR SITUATIONS LIKE THAT.

   object oPC = GetPCSpeaker();
   object oWaypoint = GetObjectByTag("WP_RylothToRundown");
   location lLocation = GetLocation(oWaypoint);

   SetAreaTransitionBMP(AREA_TRANSITION_RURAL);

   AssignCommand(oPC,ClearAllActions());
   AssignCommand(oPC,ActionJumpToLocation(lLocation));
   AssignCommand(oPC,SetFacing(GetFacing(oWaypoint)));

}
