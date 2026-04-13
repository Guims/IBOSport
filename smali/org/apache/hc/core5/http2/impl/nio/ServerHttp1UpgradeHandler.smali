.class public Lorg/apache/hc/core5/http2/impl/nio/ServerHttp1UpgradeHandler;
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
.field private final http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/1.1 stream handler factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttp1UpgradeHandler;->http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    return-void
.end method


# virtual methods
.method public upgrade(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    new-instance v1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/ServerHttp1UpgradeHandler;->http1StreamHandlerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    :goto_0
    iget-object v0, v0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v0, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;->create(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;)V

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    return-void

    :goto_2
    invoke-virtual {v1, p1, p2}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method
