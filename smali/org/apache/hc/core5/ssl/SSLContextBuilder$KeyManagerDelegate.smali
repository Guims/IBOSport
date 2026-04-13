.class Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;
.super Ljavax/net/ssl/X509ExtendedKeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/ssl/SSLContextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyManagerDelegate"
.end annotation


# instance fields
.field private final aliasStrategy:Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;

.field private final keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509ExtendedKeyManager;Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    iput-object p2, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;

    return-void
.end method

.method private putPrivateKeyDetails(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/ssl/PrivateKeyDetails;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    new-instance v3, Lorg/apache/hc/core5/ssl/PrivateKeyDetails;

    iget-object v4, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v4, v2}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lorg/apache/hc/core5/ssl/PrivateKeyDetails;-><init>(Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;

    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    check-cast p3, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2, p1, p3}, Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->aliasStrategy:Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;

    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    check-cast p3, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p2, p1, p3}, Lorg/apache/hc/core5/ssl/PrivateKeyStrategy;->chooseAlias(Ljava/util/Map;Ljavax/net/ssl/SSLParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public getClientAliasMap([Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/ssl/PrivateKeyDetails;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v4, v3, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->putPrivateKeyDetails(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public getServerAliasMap(Ljava/lang/String;[Ljava/security/Principal;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/ssl/PrivateKeyDetails;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->putPrivateKeyDetails(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/ssl/SSLContextBuilder$KeyManagerDelegate;->keyManager:Ljavax/net/ssl/X509ExtendedKeyManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509KeyManager;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
