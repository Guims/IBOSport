.class final Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;
.super Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;

# interfaces
.implements Lorg/apache/hc/client5/http/io/ManagedHttpClientConnection;
.implements Lorg/apache/hc/core5/util/Identifiable;


# static fields
.field private static final HEADER_LOG:LO5/a;

.field private static final LOG:LO5/a;

.field private static final WIRE_LOG:LO5/a;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final id:Ljava/lang/String;

.field private socketTimeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;

    invoke-static {v0}, LO5/b;->d(Ljava/lang/Class;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http.headers"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->HEADER_LOG:LO5/a;

    const-string v0, "org.apache.hc.client5.http.wire"

    invoke-static {v0}, LO5/b;->e(Ljava/lang/String;)LO5/a;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->WIRE_LOG:LO5/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;-><init>(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
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

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;-><init>(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/nio/charset/CharsetEncoder;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
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

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v1, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;-><init>(Lorg/apache/hc/core5/http/config/Http1Config;Ljava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/io/ResponseOutOfOrderStrategy;Lorg/apache/hc/core5/http/io/HttpMessageWriterFactory;Lorg/apache/hc/core5/http/io/HttpMessageParserFactory;)V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-super {p0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public bind(Ljava/net/Socket;)V
    .locals 3

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->WIRE_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/hc/client5/http/impl/io/LoggingSocketHolder;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lorg/apache/hc/client5/http/impl/io/LoggingSocketHolder;-><init>(Ljava/net/Socket;Ljava/lang/String;LO5/a;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    invoke-direct {v1, p1}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;-><init>(Ljava/net/Socket;)V

    :goto_0
    invoke-super {p0, v1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->bind(Lorg/apache/hc/core5/http/impl/io/SocketHolder;)V

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public bind(Lorg/apache/hc/core5/http/impl/io/SocketHolder;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->bind(Lorg/apache/hc/core5/http/impl/io/SocketHolder;)V

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    new-instance p1, Ljava/io/InterruptedIOException;

    const-string v0, "Connection already shutdown"

    invoke-direct {p1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} Close connection"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->close()V

    :cond_1
    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} close connection {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    :cond_1
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->getSocketHolder()Lorg/apache/hc/core5/http/impl/io/SocketHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/io/SocketHolder;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestSubmitted(Lorg/apache/hc/core5/http/ClassicHttpRequest;)V
    .locals 6

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->HEADER_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    new-instance v2, Lorg/apache/hc/core5/http/message/RequestLine;

    invoke-direct {v2, p1}, Lorg/apache/hc/core5/http/message/RequestLine;-><init>(Lorg/apache/hc/core5/http/HttpRequest;)V

    const-string v3, "{} >> {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/MessageHeaders;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v4, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->HEADER_LOG:LO5/a;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResponseReceived(Lorg/apache/hc/core5/http/ClassicHttpResponse;)V
    .locals 6

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->HEADER_LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    new-instance v2, Lorg/apache/hc/core5/http/message/StatusLine;

    invoke-direct {v2, p1}, Lorg/apache/hc/core5/http/message/StatusLine;-><init>(Lorg/apache/hc/core5/http/HttpResponse;)V

    const-string v3, "{} << {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/hc/core5/http/MessageHeaders;->getHeaders()[Lorg/apache/hc/core5/http/Header;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v4, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->HEADER_LOG:LO5/a;

    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public passivate()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/util/Timeout;->ZERO_MILLISECONDS:Lorg/apache/hc/core5/util/Timeout;

    invoke-super {p0, v0}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 3

    sget-object v0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->LOG:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "{} set socket timeout to {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/io/DefaultManagedHttpClientConnection;->id:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/hc/core5/http/impl/io/DefaultBHttpClientConnection;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
