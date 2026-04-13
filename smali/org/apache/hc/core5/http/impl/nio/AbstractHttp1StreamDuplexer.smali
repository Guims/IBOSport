.class abstract Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/util/Identifiable;
.implements Lorg/apache/hc/core5/http/HttpConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;,
        Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;,
        Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IncomingMessage::",
        "Lorg/apache/hc/core5/http/HttpMessage;",
        "OutgoingMessage::",
        "Lorg/apache/hc/core5/http/HttpMessage;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/hc/core5/util/Identifiable;",
        "Lorg/apache/hc/core5/http/HttpConnection;"
    }
.end annotation


# instance fields
.field private volatile capacityWindow:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

.field private final connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

.field private volatile connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

.field private final contentBuffer:Ljava/nio/ByteBuffer;

.field private volatile endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

.field private final http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

.field private final inTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

.field private final inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

.field private final incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private volatile incomingMessage:Lorg/apache/hc/core5/http/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/Message<",
            "TIncomingMessage;",
            "Lorg/apache/hc/core5/http/nio/ContentDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final incomingMessageParser:Lorg/apache/hc/core5/http/nio/NHttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParser<",
            "TIncomingMessage;>;"
        }
    .end annotation
.end field

.field private final ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

.field private final outTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

.field private final outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

.field private final outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

.field private volatile outgoingMessage:Lorg/apache/hc/core5/http/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/Message<",
            "TOutgoingMessage;",
            "Lorg/apache/hc/core5/http/nio/ContentEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final outgoingMessageWriter:Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriter<",
            "TOutgoingMessage;>;"
        }
    .end annotation
.end field

.field private final outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile version:Lorg/apache/hc/core5/http/ProtocolVersion;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http/config/Http1Config;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http/nio/NHttpMessageParser;Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;Lorg/apache/hc/core5/http/ContentLengthStrategy;Lorg/apache/hc/core5/http/ContentLengthStrategy;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/reactor/ProtocolIOSession;",
            "Lorg/apache/hc/core5/http/config/Http1Config;",
            "Lorg/apache/hc/core5/http/config/CharCodingConfig;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageParser<",
            "TIncomingMessage;>;",
            "Lorg/apache/hc/core5/http/nio/NHttpMessageWriter<",
            "TOutgoingMessage;>;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            "Lorg/apache/hc/core5/http/ContentLengthStrategy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "I/O session"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    :goto_0
    iput-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/config/Http1Config;->getBufferSize()I

    move-result p1

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    const/16 v1, 0x200

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxLineLength()I

    move-result v3

    invoke-static {p3}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createDecoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    invoke-direct {v0, p1, v2, v3, v4}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;-><init>(IIILjava/nio/charset/CharsetDecoder;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    new-instance v0, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p3}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createEncoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p3

    invoke-direct {v0, p1, v1, p3}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;-><init>(IILjava/nio/charset/CharsetEncoder;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    new-instance p1, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {p1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    new-instance p3, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    invoke-direct {p3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;-><init>()V

    iput-object p3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    new-instance v0, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-direct {v0, p1, p3}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;-><init>(Lorg/apache/hc/core5/http/io/HttpTransportMetrics;Lorg/apache/hc/core5/http/io/HttpTransportMetrics;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    iput-object p4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessageParser:Lorg/apache/hc/core5/http/nio/NHttpMessageParser;

    iput-object p5, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessageWriter:Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    sget-object p6, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_1
    iput-object p6, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    sget-object p7, Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;->INSTANCE:Lorg/apache/hc/core5/http/impl/DefaultContentLengthStrategy;

    :goto_2
    iput-object p7, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-virtual {p2}, Lorg/apache/hc/core5/http/config/Http1Config;->getBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->contentBuffer:Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->READY:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    return-void
.end method

.method private processCommands()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->poll()Lorg/apache/hc/core5/reactor/Command;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->getType()Lorg/apache/hc/core5/io/CloseMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->requestShutdown(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v2, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    goto :goto_0

    :cond_2
    check-cast v0, Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->execute(Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;)V

    return-void

    :cond_3
    new-instance v1, Lorg/apache/hc/core5/http/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/hc/core5/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public appendState(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "connState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", inbuf="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", outbuf="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", inputWindow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->capacityWindow:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->capacityWindow:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;->getWindow()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    sget-object v1, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v2, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    new-instance v1, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    invoke-direct {v1, p1}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;-><init>(Lorg/apache/hc/core5/io/CloseMode;)V

    sget-object p1, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {v0, v1, p1}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method public commitMessageHead(Lorg/apache/hc/core5/http/HttpMessage;ZLorg/apache/hc/core5/http/impl/nio/FlushMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutgoingMessage;Z",
            "Lorg/apache/hc/core5/http/impl/nio/FlushMode;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessageWriter:Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    invoke-interface {v0, p1, v1}, Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;->write(Lorg/apache/hc/core5/http/MessageHeaders;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {p0, p1, v0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->updateOutputMetrics(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->handleOutgoingMessage(Lorg/apache/hc/core5/http/HttpMessage;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/http/ContentLengthStrategy;->determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    iget-object v5, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    iget-object v6, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->createContentEncoder(JLjava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)Lorg/apache/hc/core5/http/nio/ContentEncoder;

    move-result-object p2

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, p0

    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    new-instance v0, Lorg/apache/hc/core5/http/Message;

    invoke-direct {v0, p1, p2}, Lorg/apache/hc/core5/http/Message;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/Object;)V

    iput-object v0, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    goto :goto_2

    :cond_1
    move-object v1, p0

    :cond_2
    :goto_2
    iget-object p1, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessageWriter:Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/NHttpMessageWriter;->reset()V

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/FlushMode;->IMMEDIATE:Lorg/apache/hc/core5/http/impl/nio/FlushMode;

    if-ne p3, p1, :cond_3

    iget-object p1, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    iget-object p2, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->flush(Ljava/nio/channels/WritableByteChannel;)I

    move-result p1

    if-lez p1, :cond_3

    iget-object p2, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_3
    iget-object p1, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_3
    iget-object p2, v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p2}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public abstract consumeData(Ljava/nio/ByteBuffer;)V
.end method

.method public abstract consumeHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIncomingMessage;",
            "Lorg/apache/hc/core5/http/EntityDetails;",
            ")V"
        }
    .end annotation
.end method

.method public abstract createContentDecoder(JLjava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)Lorg/apache/hc/core5/http/nio/ContentDecoder;
.end method

.method public abstract createContentEncoder(JLjava/nio/channels/WritableByteChannel;Lorg/apache/hc/core5/http/nio/SessionOutputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)Lorg/apache/hc/core5/http/nio/ContentEncoder;
.end method

.method public abstract dataEnd(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disconnected()V
.end method

.method public endOutputStream(Ljava/util/List;)Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)",
            "Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    if-nez v0, :cond_0

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->NONE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/Message;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/ContentEncoder;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->complete(Ljava/util/List;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    instance-of p1, v0, Lorg/apache/hc/core5/http/impl/nio/ChunkEncoder;

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->CHUNK_CODED:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;->MESSAGE_HEAD:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$MessageDelineation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public abstract execute(Lorg/apache/hc/core5/http/nio/command/RequestExecutionCommand;)V
.end method

.method public getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v2}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    iget-object v4, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v4}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/http/HttpConnectionMetrics;Lorg/apache/hc/core5/util/Timeout;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->version:Lorg/apache/hc/core5/http/ProtocolVersion;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/ssl/TransportSecurityLayer;->getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleIncomingMessage(Lorg/apache/hc/core5/http/HttpMessage;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIncomingMessage;)Z"
        }
    .end annotation
.end method

.method public abstract handleOutgoingMessage(Lorg/apache/hc/core5/http/HttpMessage;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutgoingMessage;)Z"
        }
    .end annotation
.end method

.method public abstract handleTimeout()Z
.end method

.method public abstract inputEnd()V
.end method

.method public abstract inputIdle()Z
.end method

.method public isActive()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOutputCompleted()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/Message;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/ContentEncoder;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->isCompleted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public abstract isOutputReady()Z
.end method

.method public isShuttingDown()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConnect()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->READY:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->processCommands()V

    :cond_0
    return-void
.end method

.method public final onDisconnect()V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->disconnected()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-static {v0}, Lorg/apache/hc/core5/http/nio/command/CommandSupport;->cancelCommands(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public final onException(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->shutdownSession(Ljava/lang/Exception;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-static {v0, p1}, Lorg/apache/hc/core5/http/nio/command/CommandSupport;->failCommands(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onInput(Ljava/nio/ByteBuffer;)V
    .locals 10

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->put(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->hasData()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inputIdle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessage:Lorg/apache/hc/core5/http/Message;

    const/4 v1, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->fill(Ljava/nio/channels/ReadableByteChannel;)I

    move-result p1

    if-lez p1, :cond_2

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    :cond_2
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    move v1, v0

    :cond_3
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessage:Lorg/apache/hc/core5/http/Message;

    const/4 v2, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->parseMessageHead(Z)Lorg/apache/hc/core5/http/HttpMessage;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lorg/apache/hc/core5/http/HttpMessage;->getVersion()Lorg/apache/hc/core5/http/ProtocolVersion;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->version:Lorg/apache/hc/core5/http/ProtocolVersion;

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {p0, p1, v3}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->updateInputMetrics(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->handleIncomingMessage(Lorg/apache/hc/core5/http/HttpMessage;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingContentStrategy:Lorg/apache/hc/core5/http/ContentLengthStrategy;

    invoke-interface {v3, p1}, Lorg/apache/hc/core5/http/ContentLengthStrategy;->determineLength(Lorg/apache/hc/core5/http/HttpMessage;)J

    move-result-wide v5

    iget-object v7, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    iget-object v8, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    iget-object v9, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->createContentDecoder(JLjava/nio/channels/ReadableByteChannel;Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;)Lorg/apache/hc/core5/http/nio/ContentDecoder;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v7, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;

    invoke-direct {v7, p1, v5, v6}, Lorg/apache/hc/core5/http/impl/IncomingEntityDetails;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;J)V

    goto :goto_0

    :cond_4
    move-object v7, v2

    :goto_0
    invoke-virtual {p0, p1, v7}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->consumeHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V

    goto :goto_1

    :cond_5
    move-object v4, p0

    invoke-virtual {p0, p1, v2}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->consumeHeader(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/EntityDetails;)V

    move-object v3, v2

    :goto_1
    new-instance v5, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

    iget-object v6, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->http1Config:Lorg/apache/hc/core5/http/config/Http1Config;

    invoke-virtual {v6}, Lorg/apache/hc/core5/http/config/Http1Config;->getInitialWindowSize()I

    move-result v6

    iget-object v7, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-direct {v5, v6, v7}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;-><init>(ILorg/apache/hc/core5/reactor/IOSession;)V

    iput-object v5, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->capacityWindow:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

    if-eqz v3, :cond_6

    new-instance v5, Lorg/apache/hc/core5/http/Message;

    invoke-direct {v5, p1, v3}, Lorg/apache/hc/core5/http/Message;-><init>(Lorg/apache/hc/core5/http/MessageHeaders;Ljava/lang/Object;)V

    iput-object v5, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessage:Lorg/apache/hc/core5/http/Message;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inputEnd()V

    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v3, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {p1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    goto :goto_2

    :cond_7
    move-object v4, p0

    goto :goto_4

    :cond_8
    move-object v4, p0

    :cond_9
    :goto_2
    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessage:Lorg/apache/hc/core5/http/Message;

    if-eqz p1, :cond_c

    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessage:Lorg/apache/hc/core5/http/Message;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/Message;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/nio/ContentDecoder;

    iget-object v3, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->contentBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v3}, Lorg/apache/hc/core5/http/nio/ContentDecoder;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-lez v3, :cond_a

    iget-object v5, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->contentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v5, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->contentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v5}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->consumeData(Ljava/nio/ByteBuffer;)V

    iget-object v5, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->contentBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->capacityWindow:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

    invoke-virtual {v5, v3}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;->removeCapacity(I)I

    move-result v5

    if-gtz v5, :cond_a

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ContentDecoder;->isCompleted()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->capacityWindow:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

    invoke-virtual {p0, v5}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V

    :cond_a
    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ContentDecoder;->isCompleted()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {p1}, Lorg/apache/hc/core5/http/nio/ContentDecoder;->getTrailers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->dataEnd(Ljava/util/List;)V

    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->capacityWindow:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$CapacityWindow;->close()V

    iput-object v2, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessage:Lorg/apache/hc/core5/http/Message;

    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inputEnd()V

    goto :goto_3

    :cond_b
    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    :goto_3
    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->hasData()Z

    move-result p1

    if-nez p1, :cond_3

    :goto_4
    if-eqz v1, :cond_e

    iget-object p1, v4, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;->hasData()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputIdle()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inputIdle()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->requestShutdown(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void

    :cond_d
    new-instance p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    const-string v0, "Connection closed by peer"

    invoke-direct {p1, v0}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->shutdownSession(Ljava/lang/Exception;)V

    :cond_e
    return-void
.end method

.method public final onOutput()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->flush(Ljava/nio/channels/WritableByteChannel;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->produceOutput()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->isOutputReady()Z

    move-result v2

    iget-object v3, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v3}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->hasData()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->hasData()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputEnd()V

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v2, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->processCommands()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v2, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inputIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->close()V

    :cond_5
    return-void

    :goto_4
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->handleTimeout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/apache/hc/core5/io/SocketTimeoutExceptionFactory;->create(Lorg/apache/hc/core5/util/Timeout;)Ljava/net/SocketTimeoutException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->onException(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public abstract outputEnd()V
.end method

.method public abstract outputIdle()Z
.end method

.method public parseMessageHead(Z)Lorg/apache/hc/core5/http/HttpMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TIncomingMessage;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessageParser:Lorg/apache/hc/core5/http/nio/NHttpMessageParser;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->inbuf:Lorg/apache/hc/core5/http/impl/nio/SessionInputBufferImpl;

    invoke-interface {v0, v1, p1}, Lorg/apache/hc/core5/http/nio/NHttpMessageParser;->parse(Lorg/apache/hc/core5/http/nio/SessionInputBuffer;Z)Lorg/apache/hc/core5/http/MessageHeaders;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/HttpMessage;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->incomingMessageParser:Lorg/apache/hc/core5/http/nio/NHttpMessageParser;

    invoke-interface {v0}, Lorg/apache/hc/core5/http/nio/NHttpMessageParser;->reset()V

    :cond_0
    return-object p1
.end method

.method public abstract produceOutput()V
.end method

.method public requestSessionInput()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void
.end method

.method public requestSessionOutput()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void
.end method

.method public requestShutdown(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$1;->$SwitchMap$org$apache$hc$core5$io$CloseMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->ACTIVE:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    if-ne p1, v0, :cond_2

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void
.end method

.method public setSessionTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public shutdownSession(Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iput-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->terminate(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v0, p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    if-eqz v0, :cond_0

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_0

    :cond_0
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void

    :catchall_0
    move-exception v0

    instance-of v1, p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    if-nez v1, :cond_3

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_2

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw v0
.end method

.method public shutdownSession(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    sget-object v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v1, Lorg/apache/hc/core5/reactor/Command$Priority;->NORMAL:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {p1, v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void

    :cond_0
    sget-object p1, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;->SHUTDOWN:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iput-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->connState:Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer$ConnectionState;

    iget-object p1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->close()V

    return-void
.end method

.method public streamOutput(Ljava/nio/ByteBuffer;)I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outgoingMessage:Lorg/apache/hc/core5/http/Message;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/Message;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http/nio/ContentEncoder;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http/nio/ContentEncoder;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public suspendSessionInput()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    return-void
.end method

.method public suspendSessionOutput()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outbuf:Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/impl/nio/SessionOutputBufferImpl;->flush(Ljava/nio/channels/WritableByteChannel;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->outTransportMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/BasicHttpTransportMetrics;->incrementBytesTransferred(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/http/impl/nio/AbstractHttp1StreamDuplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public abstract terminate(Ljava/lang/Exception;)V
.end method

.method public abstract updateCapacity(Lorg/apache/hc/core5/http/nio/CapacityChannel;)V
.end method

.method public abstract updateInputMetrics(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIncomingMessage;",
            "Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateOutputMetrics(Lorg/apache/hc/core5/http/HttpMessage;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutgoingMessage;",
            "Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;",
            ")V"
        }
    .end annotation
.end method
