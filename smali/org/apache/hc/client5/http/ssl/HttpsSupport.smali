.class public final Lorg/apache/hc/client5/http/ssl/HttpsSupport;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->lambda$getProperty$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;

    invoke-static {}, Lorg/apache/hc/client5/http/psl/PublicSuffixMatcherLoader;->getDefault()Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/ssl/DefaultHostnameVerifier;-><init>(Lorg/apache/hc/client5/http/psl/PublicSuffixMatcher;)V

    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/ssl/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/client5/http/ssl/c;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSystemCipherSuits()[Ljava/lang/String;
    .locals 1

    const-string v0, "https.cipherSuites"

    invoke-static {v0}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProtocols()[Ljava/lang/String;
    .locals 1

    const-string v0, "https.protocols"

    invoke-static {v0}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/hc/client5/http/ssl/HttpsSupport;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getProperty$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/hc/core5/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
