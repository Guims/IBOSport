.class final Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;
.super Ljava/lang/Object;


# instance fields
.field private final log:LO5/a;


# direct methods
.method public constructor <init>(LO5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    return-void
.end method


# virtual methods
.method public verifySession(Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    const-string v3, "Secure session established"

    invoke-interface {v0, v3}, LO5/a;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    const-string v3, " negotiated protocol: {}"

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    const-string v3, " negotiated cipher suite: {}"

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    aget-object v0, v0, v1

    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_5

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    const-string v5, " peer principal: {}"

    invoke-interface {v4, v3, v5}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    const-string v6, " peer alternative names: {}"

    invoke-interface {v3, v5, v6}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    const-string v6, " issuer principal: {}"

    invoke-interface {v5, v3, v6}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/client5/http/ssl/TlsSessionValidator;->log:LO5/a;

    const-string v4, " issuer alternative names: {}"

    invoke-interface {v0, v3, v4}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    array-length v3, v0

    if-lt v3, v2, :cond_9

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_8

    check-cast v0, Ljava/security/cert/X509Certificate;

    instance-of v1, p3, Lorg/apache/hc/client5/http/ssl/HttpClientHostnameVerifier;

    if-eqz v1, :cond_6

    check-cast p3, Lorg/apache/hc/client5/http/ssl/HttpClientHostnameVerifier;

    invoke-interface {p3, p1, v0}, Lorg/apache/hc/client5/http/ssl/HttpClientHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    goto :goto_2

    :cond_6
    invoke-interface {p3, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;->getSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate for <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> doesn\'t match any of the subject alternative names: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_8
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected certificate type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string p2, "Peer certificate chain is empty"

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    return-void
.end method
