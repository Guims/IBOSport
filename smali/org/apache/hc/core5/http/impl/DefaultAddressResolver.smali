.class public final Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/function/Resolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/function/Resolver<",
        "Lorg/apache/hc/core5/http/HttpHost;",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic resolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/DefaultAddressResolver;->resolve(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lorg/apache/hc/core5/http/HttpHost;)Ljava/net/InetSocketAddress;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1bb

    :cond_2
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method
