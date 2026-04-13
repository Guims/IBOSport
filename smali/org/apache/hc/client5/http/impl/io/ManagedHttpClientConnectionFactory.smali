.class public Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/http/io/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/http/io/HttpConnectionFactory<",
        "Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final INSTANCE:Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;


# instance fields
.field private final charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

.field private final h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

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
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/io/HttpMessageParserFactory<",
            "Lorg/apache/hc/core5/http/ClassicHttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

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

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;)V
    .locals 8
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
            ">;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;)V
    .locals 0
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
            ">;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Lorg/apache/hc/core5/http/config/CharCodingConfig;->DEFAULT:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    :goto_1
    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    sget-object p3, Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/DefaultHttpRequestWriterFactory;

    :goto_2
    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    if-eqz p4, :cond_3

    goto :goto_3

    :cond_3
    sget-object p4, Lorg/apache/hc/client5/http/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lorg/apache/hc/client5/http/impl/io/DefaultHttpResponseParserFactory;

    :goto_3
    iput-object p4, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    if-eqz p5, :cond_4

    goto :goto_4

    :cond_4
    sget-object p5, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_4
    iput-object p5, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    if-eqz p6, :cond_5

    goto :goto_5

    :cond_5
    sget-object p6, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_5
    iput-object p6, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    if-eqz p7, :cond_6

    goto :goto_6

    :cond_6
    sget-object p7, Lorg/apache/hc/core5/http/impl/io/NoResponseOutOfOrderStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/io/NoResponseOutOfOrderStrategy;

    :goto_6
    iput-object p7, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;)V

    return-void
.end method

.method public static builder()Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;
    .locals 2

    new-instance v0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$Builder;-><init>(Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory$1;)V

    return-object v0
.end method


# virtual methods
.method public createConnection(Ljava/net/Socket;)Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
    .locals 14

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_0
    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->charCodingConfig:Lorg/apache/hc/core5/http/config/CharCodingConfig;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/config/CharCodingConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-object v7, v0

    move-object v6, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    move-object v6, v3

    move-object v7, v6

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http-outgoing-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;

    iget-object v8, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->h1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    iget-object v9, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v10, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    iget-object v11, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->responseOutOfOrderStrategy:Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;

    iget-object v12, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;

    iget-object v13, p0, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;

    invoke-direct/range {v4 .. v13}, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;-><init>(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    if-eqz p1, :cond_3

    invoke-virtual {v4, p1}, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    :cond_3
    return-object v4
.end method

.method public bridge synthetic createConnection(Ljava/net/Socket;)Lorg/apache/hc/core5/http/HttpConnection;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/io/ManagedHttpClientConnectionFactory;->createConnection(Ljava/net/Socket;)Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;

    move-result-object p1

    return-object p1
.end method
