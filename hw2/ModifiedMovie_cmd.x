-- initiate
!create cust:Customer
/*!create emptyCust:Customer*/
!create reg:Movie
!create fam:Movie
!create newr:Movie
!create rent1:Rental
!create rent2:Rental
!create rent3:Rental

-- set values
!set cust.name := 'Bryce'
!set cust.numRen := 0

!set reg.title := 'Regular'
!set reg.priceCode := PriceCode::regular
!set fam.title := 'Family'
!set fam.priceCode := PriceCode::family
!set newr.title := 'New Release'
!set newr.priceCode := PriceCode::newRelease

!set rent1.daysRented := 1
!set rent2.daysRented := 2
!set rent3.daysRented := 4

-- insert associations
!insert (cust, rent1) into custRentals
!insert (cust, rent2) into custRentals
!insert (cust, rent3) into custRentals

!insert (rent1, reg) into movRental
!insert (rent2, fam) into movRental
!insert (rent3, newr) into movRental

!cust.Statement()
