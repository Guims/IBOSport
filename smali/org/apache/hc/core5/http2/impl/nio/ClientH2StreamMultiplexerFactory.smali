.class public final Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private final h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;"
        }
    .end annotation
.end field

.field private final streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http2/config/H2Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    :goto_0
    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_1
    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iput-object p5, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;
    .locals 8

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;

    sget-object v2, Lorg/apache/hc/core5/http2/frame/DefaultFrameFactory;->INSTANCE:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->pushHandlerFactory:Lorg/apache/hc/core5/http/nio/HandlerFactory;

    iget-object v5, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->h2Config:Lorg/apache/hc/core5/http2/config/H2Config;

    iget-object v6, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iget-object v7, p0, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexerFactory;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/ClientH2StreamMultiplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/nio/HandlerFactory;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V

    return-object v0
.end method
