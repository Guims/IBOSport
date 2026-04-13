.class public Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/SchemePortResolver;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)I
    .locals 1

    const-string v0, "Endpoint"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result p2

    if-lez p2, :cond_0

    return p2

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p1, 0x50

    return p1

    :cond_1
    sget-object p2, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x1bb

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public resolve(Lorg/apache/hc/core5/http/HttpHost;)I
    .locals 1

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/hc/client5/http/impl/DefaultSchemePortResolver;->resolve(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)I

    move-result p1

    return p1
.end method
