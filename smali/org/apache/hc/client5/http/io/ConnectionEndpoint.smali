.class public abstract Lorg/apache/hc/client5/http/io/ConnectionEndpoint;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/io/ModalCloseable;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract execute(Ljava/lang/String;Lorg/apache/hc/core5/http/ClassicHttpRequest;Lorg/apache/hc/core5/http/impl/io/HttpRequestExecutor;Lorg/apache/hc/core5/http/protocol/HttpContext;)Lorg/apache/hc/core5/http/ClassicHttpResponse;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
.end method
