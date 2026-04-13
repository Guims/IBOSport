.class public Lorg/apache/hc/core5/http2/impl/nio/ClientHttp1UpgradeHandler;
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
.field private final http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/1.1 stream handler factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientHttp1UpgradeHandler;->http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;

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

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1IOEventHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientHttp1UpgradeHandler;->http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->create(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1IOEventHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexer;)V

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method
