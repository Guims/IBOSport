.class public Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final streamDuplexerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

.field private final tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Stream duplexer factory"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->streamDuplexerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method


# virtual methods
.method public createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 13

    move-object v3, p2

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTP:Lorg/apache/hc/core5/http/URIScheme;

    iget-object v6, v0, Lorg/apache/hc/core5/http/URIScheme;->id:Ljava/lang/String;

    instance-of v0, v3, Lorg/apache/hc/core5/reactor/EndpointParameters;

    if-eqz v0, :cond_0

    move-object v9, v3

    check-cast v9, Lorg/apache/hc/core5/reactor/EndpointParameters;

    invoke-virtual {v9}, Lorg/apache/hc/core5/reactor/EndpointParameters;->getScheme()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/core5/http/URIScheme;->HTTPS:Lorg/apache/hc/core5/http/URIScheme;

    invoke-virtual {v0, v6}, Lorg/apache/hc/core5/http/URIScheme;->same(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    invoke-virtual {v9}, Lorg/apache/hc/core5/reactor/EndpointParameters;->getAttachment()Ljava/lang/Object;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    const/4 v12, 0x0

    move-object v8, p1

    invoke-interface/range {v7 .. v12}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->tlsStrategy:Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lorg/apache/hc/core5/http/nio/ssl/TlsStrategy;->upgrade(Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;Lorg/apache/hc/core5/net/NamedEndpoint;Ljava/lang/Object;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandlerFactory;->streamDuplexerFactory:Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;

    invoke-virtual {v1, v6, p1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexerFactory;->create(Ljava/lang/String;Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/impl/nio/ServerHttp1IOEventHandler;-><init>(Lorg/apache/hc/core5/http/impl/nio/ServerHttp1StreamDuplexer;)V

    return-object v0
.end method
