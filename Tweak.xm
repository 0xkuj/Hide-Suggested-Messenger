/* Tweak Bounty */
/* This tweak will hide your "suggested" and "recent" results from the search dialog inside your facebook messenger */
/* support latest messenger version - 313.0 */

%hook UISearchController
-(void)viewWillAppear:(BOOL)arg1 {
	%orig;
	if (arg1) {
		((UIViewController*)self).view.hidden = YES;
	}
	
}
-(void)viewDidAppear:(BOOL)arg1 {
	%orig;
	if (arg1) {
		((UIViewController*)self).view.hidden = YES;
	}
}
-(void)viewWillDisappear:(BOOL)arg1 {
	if (arg1) {
		((UIViewController*)self).view.hidden = YES;
	}
	%orig;
}
-(void)_searchBar:(id)arg1 textDidChange:(id)arg2 {
	%orig(arg1,arg2);
	if ([[(UISearchBar*)arg1 text] length] == 0) {
		((UIViewController*)self).view.hidden = YES;
	} else {
		((UIViewController*)self).view.hidden = NO;
	}

	return;
}
%end