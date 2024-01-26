!create s1:Subscriber
!create s2:Subscriber
!create news1:NewspaperSubscription
!create movie1:MovieSubscription
!create magazine1:MagazineSubscription

!insert (news1, s1) into newspaper
!insert (movie1, s1) into movie

!insert (movie1, s2) into movie
!insert (magazine1, s2) into magazine
