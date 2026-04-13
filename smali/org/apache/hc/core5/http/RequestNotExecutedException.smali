.class public Lorg/apache/hc/core5/http/RequestNotExecutedException;
.super Lorg/apache/hc/core5/http/ConnectionClosedException;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Connection is closed"

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    return-void
.end method
