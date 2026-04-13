.class public final Lorg/apache/hc/core5/http/HttpHost;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/net/NamedEndpoint;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT_SCHEME:Lorg/apache/hc/core5/http/URIScheme;

.field private static final serialVersionUID:J = -0x687dd718ea3e061aL


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final host:Lorg/apache/hc/core5/net/Host;

.field private final schemeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    sput-object v0, Lorg/apache/hc/core5/http/HttpHost;->DEFAULT_SCHEME:Lorg/apache/hc/core5/http/URIScheme;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;I)V
    .locals 1

    const-string v0, "Inet address"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Host name"

    invoke-static {p3, v0}, Lorg/apache/hc/core5/util/Args;->containsNoBlanks(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Lorg/apache/hc/core5/net/Host;

    invoke-direct {v0, p3, p4}, Lorg/apache/hc/core5/net/Host;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/hc/core5/util/TextUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/HttpHost;->DEFAULT_SCHEME:Lorg/apache/hc/core5/http/URIScheme;

    iget-object p1, p1, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/HttpHost;->schemeName:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/hc/core5/http/HttpHost;->address:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V
    .locals 1

    const-string v0, "Named endpoint"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/net/NamedEndpoint;

    invoke-interface {v0}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/net/URIAuthority;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 3

    const-string v0, "HTTP Host"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/core5/util/TextUtils;->containsBlanks(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v1, "scheme contains blanks"

    invoke-direct {v0, p0, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Lorg/apache/hc/core5/net/Host;->create(Ljava/lang/String;)Lorg/apache/hc/core5/net/Host;

    move-result-object p0

    new-instance v0, Lorg/apache/hc/core5/http/HttpHost;

    invoke-direct {v0, v1, p0}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/net/NamedEndpoint;)V

    return-object v0
.end method

.method public static create(Ljava/net/URI;)Lorg/apache/hc/core5/http/HttpHost;
    .locals 3

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/core5/http/HttpHost;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/URIScheme;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getPort()I

    move-result p0

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/hc/core5/http/HttpHost;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/hc/core5/http/HttpHost;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/apache/hc/core5/http/HttpHost;

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->schemeName:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/hc/core5/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    iget-object v3, p1, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    invoke-virtual {v1, v3}, Lorg/apache/hc/core5/net/Host;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->address:Ljava/net/InetAddress;

    iget-object p1, p1, Lorg/apache/hc/core5/http/HttpHost;->address:Ljava/net/InetAddress;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/HttpHost;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/Host;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/Host;->getPort()I

    move-result v0

    return v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/HttpHost;->schemeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->address:Ljava/net/InetAddress;

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toHostString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    invoke-virtual {v0}, Lorg/apache/hc/core5/net/Host;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->schemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/HttpHost;->host:Lorg/apache/hc/core5/net/Host;

    invoke-virtual {v1}, Lorg/apache/hc/core5/net/Host;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
