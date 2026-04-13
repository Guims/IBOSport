.class public final Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;
.super Ljava/lang/Object;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# instance fields
.field private final charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private final connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

.field private final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final requestWriterFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParserFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/ConnectionReuseStrategy;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/impl/Http1StreamListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP processor"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz p2, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    sget-object p3, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_1
    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    sget-object p4, Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultConnectionReuseStrategy;

    :goto_2
    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    if-eqz p5, :cond_3

    goto :goto_3

    :cond_3
    new-instance p5, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParserFactory;

    invoke-direct {p5, p2}, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpResponseParserFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;)V

    :goto_3
    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->responseParserFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;

    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    sget-object p6, Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/nio/DefaultHttpRequestWriterFactory;

    :goto_4
    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->requestWriterFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;

    if-eqz p7, :cond_5

    goto :goto_5

    :cond_5
    sget-object p7, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_5
    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    if-eqz p8, :cond_6

    goto :goto_6

    :cond_6
    sget-object p8, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_6
    iput-object p8, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iput-object p9, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/ConnectionReuseStrategy;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/HttpResponse;",
            ">;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/HttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/impl/Http1StreamListener;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;-><init>(Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/hc/core5/reactor/ProtocolIOSession;)Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexer;
    .locals 11

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexer;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->connectionReuseStrategy:Lorg/apache/hc/core5/http/ConnectionReuseStrategy;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->responseParserFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/NHttpMessageParserFactory;->create()Lorg/apache/hc/core5/http/nio/NHttpMessageParser;

    move-result-object v6

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->requestWriterFactory:Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;

    invoke-interface {v1}, Lorg/apache/hc/core5/http/nio/NHttpMessageWriterFactory;->create()Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v9, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v10, p0, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexerFactory;->streamListener:Lorg/apache/hc/core5/http/impl/Http1StreamListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lorg/apache/hc/core5/http/impl/nio/ClientHttp1StreamDuplexer;-><init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ConnectionReuseStrategy;Lorg/apache/hc/core5/http/nio/NHttpMessageParser;Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/impl/Http1StreamListener;)V

    return-object v0
.end method
