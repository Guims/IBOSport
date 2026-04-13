.class public Lorg/apache/hc/client5/http/impl/classic/DefaultBackoffStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/classic/ConnectionBackoffStrategy;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Experimental;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldBackoff(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/net/ConnectException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldBackoff(Lorg/apache/hc/core5/http/HttpResponse;)Z
    .locals 2

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result v0

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpResponse;->getCode()I

    move-result p1

    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
