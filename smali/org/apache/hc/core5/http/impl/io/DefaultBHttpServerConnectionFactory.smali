.class public Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
        "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private final incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private final requestParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->scheme:Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    sget-object p3, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_1
    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->requestParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->responseWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V

    return-void
.end method

.method public static builder()Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$Builder;-><init>(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;

    move-result-object p1

    return-object p1
.end method

.method public createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;
    .locals 9

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->scheme:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-static {v3}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createDecoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-static {v4}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createEncoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->requestParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnectionFactory;->responseWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;-><init>(Ljava/lang/String;Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;)V

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpServerConnection;->bind(Ljava/net/Socket;)V

    return-object v0
.end method
