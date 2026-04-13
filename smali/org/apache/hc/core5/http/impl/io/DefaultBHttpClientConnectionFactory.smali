.class public Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
        "Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;",
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

.field private final requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

.field private final responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_1
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpRequest;",
            ">;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public static builder()Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$Builder;-><init>(Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;

    move-result-object p1

    return-object p1
.end method

.method public createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;
    .locals 9

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-static {v2}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createDecoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-static {v3}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createEncoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->bind(Ljava/net/Socket;)V

    return-object v0
.end method
