.class public Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/auth/CredentialsStore;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final internal:Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;-><init>()V

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->internal:Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    return-void
.end method

.method private static getProxyCredentials(Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScope;)Ljava/net/PasswordAuthentication;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".proxyHost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".proxyPort"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    new-instance v3, Lorg/apache/hc/client5/http/auth/AuthScope;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v0, v2}, Lorg/apache/hc/client5/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v3}, Lorg/apache/hc/client5/http/auth/AuthScope;->match(Lorg/apache/hc/client5/http/auth/AuthScope;)I

    move-result p1

    if-ltz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".proxyUser"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".proxyPassword"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/net/PasswordAuthentication;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    new-array p0, p0, [C

    :goto_0
    invoke-direct {v0, p1, p0}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_4
    return-object v1
.end method

.method private static getSystemCreds(Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScope;Ljava/net/Authenticator$RequestorType;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Ljava/net/PasswordAuthentication;
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/apache/hc/core5/http/protocol/HttpCoreContext;->getRequest()Lorg/apache/hc/core5/http/HttpRequest;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3}, Lorg/apache/hc/core5/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    move-object v7, v0

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getPort()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getRealm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v4, p0

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->internal:Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;->clear()V

    return-void
.end method

.method public getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;
    .locals 3

    const-string v0, "Auth scope"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->internal:Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;->getCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/apache/hc/client5/http/protocol/HttpClientContext;->adapt(Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/client5/http/protocol/HttpClientContext;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getProtocol()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getPort()I

    move-result v0

    const/16 v2, 0x1bb

    if-ne v0, v2, :cond_3

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    :goto_1
    iget-object v0, v0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    goto :goto_1

    :goto_2
    sget-object v2, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    invoke-static {v0, p1, v2, p2}, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->getSystemCreds(Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScope;Ljava/net/Authenticator$RequestorType;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-static {v0, p1, v2, p2}, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->getSystemCreds(Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScope;Ljava/net/Authenticator$RequestorType;Lorg/apache/hc/client5/http/protocol/HttpClientContext;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    sget-object p2, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/URIScheme;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->getProxyCredentials(Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScope;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object p2, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/URIScheme;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->getProxyCredentials(Ljava/lang/String;Lorg/apache/hc/client5/http/auth/AuthScope;)Ljava/net/PasswordAuthentication;

    move-result-object v2

    :cond_5
    if-eqz v2, :cond_8

    const-string p2, "http.auth.ntlm.domain"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p1, Lorg/apache/hc/client5/http/auth/NTCredentials;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v2

    invoke-direct {p1, v0, v2, v1, p2}, Lorg/apache/hc/client5/http/auth/NTCredentials;-><init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_6
    const-string p2, "NTLM"

    invoke-virtual {p1}, Lorg/apache/hc/client5/http/auth/AuthScope;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lorg/apache/hc/client5/http/auth/NTCredentials;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {p1, p2, v0, v1, v1}, Lorg/apache/hc/client5/http/auth/NTCredentials;-><init>(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_7
    new-instance p1, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/client5/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;[C)V

    return-object p1

    :cond_8
    return-object v1
.end method

.method public setCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/SystemDefaultCredentialsProvider;->internal:Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;

    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/BasicCredentialsProvider;->setCredentials(Lorg/apache/hc/client5/http/auth/AuthScope;Lorg/apache/hc/client5/http/auth/Credentials;)V

    return-void
.end method
