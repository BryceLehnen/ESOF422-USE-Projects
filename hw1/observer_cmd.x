!create s1:SubscriberA
!create s2:SubscriberB
!create news1:NewspaperSubscription
!create movie1:MovieSubscription
!create magazine1:MagazineSubscription

!s1.register('newspaperSubscription')
--!news1.registerSubscriber()
!s1.register('movieSubscription')
--!movie1.registerSubscriber()
!insert (news1, s1) into newspaper
!insert (movie1, s1) into movie

!s2.register('movieSubscription')
--!movie1.registerSubscriber()
!s2.register('magazineSubscription')
--!magazine1.registerSubscriber()
!insert (movie1, s2) into movie
!insert (magazine1, s2) into magazine
