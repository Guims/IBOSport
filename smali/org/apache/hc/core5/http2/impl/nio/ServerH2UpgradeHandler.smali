.class public Lorg/apache/hc/core5/http2/impl/nio/ServerH2UpgradeHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/ProtocolUpgradeHandler;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/2 stream handler factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2UpgradeHandler;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    return-void
.end method


# virtual methods
.method public upgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerH2UpgradeHandler;->http2StreamHandlerFactory:Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/hc/core5/http2/impl/nio/ServerH2PrefaceHandler;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/impl/nio/ServerH2StreamMultiplexerFactory;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method
