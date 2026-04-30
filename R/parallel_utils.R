###########################################################################
# .parallel_type                                                          #
#                                                                         #
# Returns the fastest cluster type for the current platform.             #
# On Windows, this helper returns PSOCK because FORK is unavailable.     #
# On macOS and Linux, FORK is faster because workers inherit the parent  #
# process via copy-on-write, eliminating the need to re-export packages  #
# and large objects.                                                      #
###########################################################################

.parallel_type <- function() {
     if (.Platform$OS.type == "windows") "PSOCK" else "FORK"
     }

#End
