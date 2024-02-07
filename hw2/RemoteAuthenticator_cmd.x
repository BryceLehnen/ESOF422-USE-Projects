-- initiate
!create actor:Client
!create proxy:ProxyAuthenticator
!create remote:RemoteAuthenticator
!create authenticator:Authenticator
!create authorizer:Authorizer

-- insert associations
!insert (actor, proxy) into request
!insert (actor, remote) into request
!insert (proxy, remote) into represents
!insert (remote, authenticator) into authenticators
!insert (remote, authorizer) into authorizers

!actor.request()
