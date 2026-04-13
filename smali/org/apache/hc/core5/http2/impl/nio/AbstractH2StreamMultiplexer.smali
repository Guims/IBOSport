.class abstract Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/util/Identifiable;
.implements Lorg/apache/hc/core5/http/HttpConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;,
        Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;,
        Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;,
        Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;,
        Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;
    }
.end annotation


# static fields
.field private static final CONNECTION_WINDOW_LOW_MARK:J = 0xa00000L

.field private static final LINGER_TIME:J = 0x3e8L


# instance fields
.field private final connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

.field private final connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

.field private connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

.field private continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

.field private endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

.field private final frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

.field private goAwayReceived:Z

.field private final hPackDecoder:Lorg/apache/hc/core5/http2/hpack/HPackDecoder;

.field private final hPackEncoder:Lorg/apache/hc/core5/http2/hpack/HPackEncoder;

.field private final httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

.field private final idGenerator:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

.field private initInputWinSize:I

.field private initOutputWinSize:I

.field private final inputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;

.field private final inputMetrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

.field private final ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

.field private final lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

.field private localSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

.field private lowMark:I

.field private final outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

.field private final outputMetrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

.field private final outputQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/hc/core5/http2/frame/RawFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pingHandlers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private processedRemoteStreamId:I

.field private volatile remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

.field private remoteSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

.field private final streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

.field private final streamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Lorg/apache/hc/core5/http2/frame/FrameFactory;Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/config/CharCodingConfig;Lorg/apache/hc/core5/http2/config/H2Config;Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->READY:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->READY:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    const-string v0, "IO session"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const-string p1, "Frame factory"

    invoke-static {p2, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http2/frame/FrameFactory;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    const-string p1, "Stream id generator"

    invoke-static {p3, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->idGenerator:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    const-string p1, "HTTP processor"

    invoke-static {p4, p1}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    sget-object p6, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    :goto_0
    iput-object p6, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    new-instance p1, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-direct {p1}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->inputMetrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    new-instance p2, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    invoke-direct {p2}, Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;-><init>()V

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputMetrics:Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;

    new-instance p3, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-direct {p3, p1, p2}, Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;-><init>(Lorg/apache/hc/core5/http/io/HttpTransportMetrics;Lorg/apache/hc/core5/http/io/HttpTransportMetrics;)V

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    new-instance p3, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;

    invoke-virtual {p6}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result p4

    invoke-direct {p3, p1, p4}, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->inputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;

    new-instance p1, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {p6}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;-><init>(Lorg/apache/hc/core5/http2/impl/BasicH2TransportMetrics;I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->pingHandlers:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;

    invoke-static {p5}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createEncoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;-><init>(Ljava/nio/charset/CharsetEncoder;)V

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackEncoder:Lorg/apache/hc/core5/http2/hpack/HPackEncoder;

    new-instance p2, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;

    invoke-static {p5}, Lorg/apache/hc/core5/http/impl/CharCodingSupport;->createDecoder(Lorg/apache/hc/core5/http/config/CharCodingConfig;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;-><init>(Ljava/nio/charset/CharsetDecoder;)V

    iput-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackDecoder:Lorg/apache/hc/core5/http2/hpack/HPackDecoder;

    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    sget-object p3, Lorg/apache/hc/core5/http2/config/H2Config;->INIT:Lorg/apache/hc/core5/http2/config/H2Config;

    iput-object p3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result p5

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result p5

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result p4

    iput p4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initInputWinSize:I

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result p4

    iput p4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initOutputWinSize:I

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getHeaderTableSize()I

    move-result p4

    invoke-virtual {p2, p4}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->setMaxTableSize(I)V

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getHeaderTableSize()I

    move-result p4

    invoke-virtual {p1, p4}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->setMaxTableSize(I)V

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxHeaderListSize()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->setMaxListSize(I)V

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lowMark:I

    iput-object p7, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    return-void
.end method

.method public static synthetic access$1000(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;IILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitPushPromise(IILjava/util/List;)V

    return-void
.end method

.method public static synthetic access$1100(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->incrementInputCapacity(ILjava/util/concurrent/atomic/AtomicInteger;I)V

    return-void
.end method

.method public static synthetic access$1300(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamData(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1400(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/frame/FrameFactory;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrameInternal(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    return-void
.end method

.method public static synthetic access$1600(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->requestSessionOutput()V

    return-void
.end method

.method public static synthetic access$1700(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/reactor/ProtocolIOSession;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;ILjava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitHeaders(ILjava/util/List;Z)V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->generateStreamId()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/config/H2Config;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http2/config/H2Config;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http/protocol/HttpProcessor;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    return-object p0
.end method

.method private applyLocalSettings()V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackDecoder:Lorg/apache/hc/core5/http2/hpack/HPackDecoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/config/H2Config;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->setMaxTableSize(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackDecoder:Lorg/apache/hc/core5/http2/hpack/HPackDecoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxHeaderListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->setMaxListSize(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result v0

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initInputWinSize:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result v1

    iput v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initInputWinSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getId()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getInputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-direct {p0, v3, v2, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateInputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->FLOW_CONTROL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initInputWinSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lowMark:I

    return-void
.end method

.method private applyRemoteSettings(Lorg/apache/hc/core5/http2/config/H2Config;)V
    .locals 3

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackEncoder:Lorg/apache/hc/core5/http2/hpack/HPackEncoder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config;->getHeaderTableSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->setMaxTableSize(I)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result p1

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initOutputWinSize:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result v0

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initOutputWinSize:I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->expand(I)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getId()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-direct {p0, v2, v1, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateOutputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->FLOW_CONTROL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 1

    const-string v0, "Frame"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrameInternal(Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private commitFrameInternal(Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getStreamId()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onFrameOutput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v0, p1, v1}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->write(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void
.end method

.method private commitHeaders(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/hc/core5/http/Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onHeaderOutput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackEncoder:Lorg/apache/hc/core5/http2/hpack/HPackEncoder;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/config/H2Config;->isCompressionEnabled()Z

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeHeaders(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/util/List;Z)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lez p2, :cond_3

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object v5

    invoke-static {v5, v2, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    sub-int/2addr p2, v4

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-nez p2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-virtual {v3, p1, v5, v6, p3}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createHeaders(ILjava/nio/ByteBuffer;ZZ)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-virtual {v4, p1, v5, v6}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createContinuation(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v4

    move-object v7, v4

    move v4, v3

    move-object v3, v7

    :goto_2
    invoke-direct {p0, v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrameInternal(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    move v3, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method private commitPushPromise(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p3}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onHeaderOutput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/util/ByteArrayBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;-><init>(I)V

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    int-to-byte p2, p2

    invoke-virtual {v0, p2}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->append(I)V

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackEncoder:Lorg/apache/hc/core5/http2/hpack/HPackEncoder;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/config/H2Config;->isCompressionEnabled()Z

    move-result v1

    invoke-virtual {p2, v0, p3, v1}, Lorg/apache/hc/core5/http2/hpack/HPackEncoder;->encodeHeaders(Lorg/apache/hc/core5/util/ByteArrayBuffer;Ljava/util/List;Z)V

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->length()I

    move-result p2

    const/4 p3, 0x0

    move v1, p3

    move v2, v1

    :goto_0
    if-lez p2, :cond_3

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/hc/core5/util/ByteArrayBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v1, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    sub-int/2addr p2, v3

    add-int/2addr v1, v3

    const/4 v3, 0x1

    if-nez p2, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-virtual {v2, p1, v4, v5}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createPushPromise(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-virtual {v3, p1, v4, v5}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createContinuation(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v3

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    :goto_2
    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrameInternal(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    move v2, v3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string p3, "Message headers are missing"

    invoke-direct {p1, p2, p3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1
.end method

.method private consumeContinuationFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getStreamId()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->copyPayload(Ljava/nio/ByteBuffer;)V

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->getContent()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteInitiated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onHeaderInput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V

    :cond_1
    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isLocalReset()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    iget-boolean v0, v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->endStream:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->setRemoteEndStream()V

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    iget v0, v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->type:I

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameType;->PUSH_PROMISE:Lorg/apache/hc/core5/http2/frame/FrameType;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/frame/FrameType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->consumePromise(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->consumeHeader(Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    return-void

    :cond_5
    new-instance p1, Lorg/apache/hc/core5/http2/H2StreamResetException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->STREAM_CLOSED:Lorg/apache/hc/core5/http2/H2Error;

    const-string v0, "Stream already closed"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method private consumeDataFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    .locals 6

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayloadContent()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getLength()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getInputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    neg-int v2, v2

    invoke-direct {p0, v0, v3, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateInputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    iget v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lowMark:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->produceInputCapacityUpdate()V

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v3, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateInputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->maximizeConnWindow(I)V

    :cond_1
    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteClosed()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_STREAM:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->setRemoteEndStream()V

    :cond_2
    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isLocalReset()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->consumeData(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_4
    new-instance p1, Lorg/apache/hc/core5/http2/H2StreamResetException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->STREAM_CLOSED:Lorg/apache/hc/core5/http2/H2Error;

    const-string v0, "Stream already closed"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1
.end method

.method private consumeFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    .locals 12

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/frame/FrameType;->valueOf(I)Lorg/apache/hc/core5/http2/frame/FrameType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getStreamId()I

    move-result v2

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    if-eqz v3, :cond_1

    sget-object v3, Lorg/apache/hc/core5/http2/frame/FrameType;->CONTINUATION:Lorg/apache/hc/core5/http2/frame/FrameType;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "CONTINUATION frame expected"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sget-object v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;->$SwitchMap$org$apache$hc$core5$http2$frame$FrameType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const-string v3, "GOAWAY received"

    const-string v4, ")"

    const/16 v5, 0x8

    const-string v7, "Illegal stream id: "

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "Illegal stream id"

    const/4 v11, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_14

    :pswitch_1
    if-nez v2, :cond_8

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-lt v2, v5, :cond_7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput-boolean v9, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->goAwayReceived:Z

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->NO_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/H2Error;->getCode()I

    move-result v3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->ACTIVE:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->idGenerator:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    invoke-interface {v5, v4}, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->isSameSide(I)Z

    move-result v5

    if-nez v5, :cond_2

    if-le v4, v2, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->cancel()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    goto :goto_2

    :cond_4
    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    :goto_2
    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    new-instance v5, Lorg/apache/hc/core5/http2/H2StreamResetException;

    const-string v6, "Connection terminated by the peer ("

    invoke-static {v6, v0, v4}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->reset(Ljava/lang/Exception;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    :goto_4
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, v11}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void

    :cond_7
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Invalid GOAWAY payload"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {v0, v2, v10}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->acceptPushFrame()V

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->goAwayReceived:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config;->isPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getValidStream(I)Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/apache/hc/core5/http2/H2StreamResetException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->STREAM_CLOSED:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Stream closed"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Lorg/apache/hc/core5/http2/H2StreamResetException;)V

    return-void

    :cond_9
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayloadContent()Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lt v0, v11, :cond_e

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->idGenerator:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    invoke-interface {v0, v2}, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->isSameSide(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateLastStreamId(I)V

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    iget v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initInputWinSize:I

    iget v5, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initOutputWinSize:I

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;IZII)V

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v4, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->ACTIVE:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gtz v3, :cond_a

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {v7}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getPushHandlerFactory()Lorg/apache/hc/core5/http/nio/HandlerFactory;

    move-result-object v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->createRemotelyInitiatedStream(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/HandlerFactory;)Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    move-result-object v3

    goto :goto_5

    :cond_a
    sget-object v3, Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;->INSTANCE:Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->setLocalEndStream()V

    :goto_5
    new-instance v4, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-direct {v4, v0, v3, v9, v8}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;ZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0, p1, v10, v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->consumePushPromiseFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/nio/ByteBuffer;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    :try_end_0
    .catch Lorg/apache/hc/core5/http2/H2StreamResetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/hc/core5/http/HttpStreamResetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    goto :goto_6

    :cond_b
    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->NO_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    :goto_6
    invoke-virtual {v4, v0, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    goto/16 :goto_14

    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Lorg/apache/hc/core5/http2/H2StreamResetException;)V

    goto/16 :goto_14

    :cond_c
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v4, "Unexpected promised stream id: "

    invoke-static {v2, v4}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v4, "Illegal promised stream id: "

    invoke-static {v2, v4}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Invalid PUSH_PROMISE payload"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Push is disabled"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-nez v2, :cond_14

    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->ACK:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->TRANSMITTED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    if-ne v0, v2, :cond_2c

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->ACKED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, v11}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->applyLocalSettings()V

    return-void

    :cond_11
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    rem-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_12

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->consumeSettingsFrame(Ljava/nio/ByteBuffer;)V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->TRANSMITTED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    goto :goto_7

    :cond_12
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Invalid SETTINGS payload"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_7
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createSettingsAck()Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->ACKED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    return-void

    :cond_14
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {v0, v2, v10}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-nez v2, :cond_17

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayloadContent()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-ne v2, v5, :cond_16

    sget-object v2, Lorg/apache/hc/core5/http2/frame/FrameFlag;->ACK:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->pingHandlers:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    if-eqz v2, :cond_2c

    invoke-interface {v2, v0}, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;->consumeResponse(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_15
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createPingAck(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    return-void

    :cond_16
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Invalid PING frame payload"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {v0, v2, v10}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_5
    if-eqz v2, :cond_1b

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gt v2, v0, :cond_18

    goto/16 :goto_14

    :cond_18
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v4, "Unexpected stream id: "

    invoke-static {v2, v4}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-ne v5, v11, :cond_1a

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    new-instance v5, Lorg/apache/hc/core5/http2/H2StreamResetException;

    const-string v6, "Stream reset ("

    invoke-static {v6, v3, v4}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->reset(Ljava/lang/Exception;)V

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->requestSessionOutput()V

    return-void

    :cond_1a
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Invalid RST_STREAM frame payload"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-static {v2, v7}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-ne v3, v11, :cond_1f

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-lez v0, :cond_1e

    if-nez v2, :cond_1c

    :try_start_1
    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateOutputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    new-instance v2, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->FLOW_CONTROL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v2

    :cond_1c
    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    if-eqz v3, :cond_1d

    :try_start_2
    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateOutputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    new-instance v2, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->FLOW_CONTROL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v2

    :cond_1d
    :goto_8
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, v11}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void

    :cond_1e
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Invalid WINDOW_UPDATE delta"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->FRAME_SIZE_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Invalid WINDOW_UPDATE frame payload"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_7
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    if-eqz v0, :cond_22

    iget v0, v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->streamId:I

    if-ne v2, v0, :cond_21

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getValidStream(I)Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    move-result-object v3

    :try_start_3
    invoke-direct {p0, p1, v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->consumeContinuationFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    :try_end_3
    .catch Lorg/apache/hc/core5/http2/H2StreamResetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/hc/core5/http/HttpStreamResetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_20

    sget-object v4, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    goto :goto_9

    :cond_20
    sget-object v4, Lorg/apache/hc/core5/http2/H2Error;->CANCEL:Lorg/apache/hc/core5/http2/H2Error;

    :goto_9
    invoke-virtual {v3, v0, v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    goto :goto_a

    :catch_5
    move-exception v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Lorg/apache/hc/core5/http2/H2StreamResetException;)V

    :goto_a
    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->requestSessionOutput()V

    goto/16 :goto_14

    :cond_21
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v4, "Unexpected CONTINUATION stream id: "

    invoke-static {v2, v4}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Unexpected CONTINUATION frame"

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_8
    if-eqz v2, :cond_2a

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->acceptHeaderFrame()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->idGenerator:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    invoke-interface {v0, v2}, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->isSameSide(I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->goAwayReceived:Z

    if-nez v0, :cond_25

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateLastStreamId(I)V

    new-instance v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    iget v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initInputWinSize:I

    iget v5, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initOutputWinSize:I

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;IZII)V

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v4, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->ACTIVE:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gtz v3, :cond_23

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {p0, v0, v3, v4, v8}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->createRemotelyInitiatedStream(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/HandlerFactory;)Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    move-result-object v3

    goto :goto_b

    :cond_23
    sget-object v3, Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;->INSTANCE:Lorg/apache/hc/core5/http2/impl/nio/NoopH2StreamHandler;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;->setLocalEndStream()V

    :goto_b
    new-instance v4, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-direct {v4, v0, v3, v9, v8}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;ZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isOutputReady()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->produceOutput()V

    :cond_24
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_25
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-direct {v0, v2, v3}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-static {v2, v7}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_27
    move-object v4, v0

    :goto_c
    :try_start_4
    invoke-direct {p0, p1, v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->consumeHeaderFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isOutputReady()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->produceOutput()V
    :try_end_4
    .catch Lorg/apache/hc/core5/http2/H2StreamResetException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/hc/core5/http/HttpStreamResetException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/hc/core5/http/HttpException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_10

    :goto_d
    invoke-virtual {v4, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->handle(Lorg/apache/hc/core5/http/HttpException;)V

    goto :goto_11

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_28

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    goto :goto_f

    :cond_28
    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->CANCEL:Lorg/apache/hc/core5/http2/H2Error;

    :goto_f
    invoke-virtual {v4, v0, v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    goto :goto_11

    :goto_10
    invoke-virtual {v4, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Lorg/apache/hc/core5/http2/H2StreamResetException;)V

    :cond_29
    :goto_11
    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->requestSessionOutput()V

    goto :goto_14

    :cond_2a
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v3, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-static {v2, v7}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_9
    invoke-direct {p0, v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->getValidStream(I)Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    move-result-object v3

    :try_start_5
    invoke-direct {p0, p1, v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->consumeDataFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    :try_end_5
    .catch Lorg/apache/hc/core5/http2/H2StreamResetException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lorg/apache/hc/core5/http/HttpStreamResetException; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_13

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2b

    sget-object v4, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    goto :goto_12

    :cond_2b
    sget-object v4, Lorg/apache/hc/core5/http2/H2Error;->CANCEL:Lorg/apache/hc/core5/http2/H2Error;

    :goto_12
    invoke-virtual {v3, v0, v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Ljava/lang/Exception;Lorg/apache/hc/core5/http2/H2Error;)V

    goto :goto_13

    :catch_a
    move-exception v0

    invoke-virtual {v3, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->localReset(Lorg/apache/hc/core5/http2/H2StreamResetException;)V

    :goto_13
    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->requestSessionOutput()V

    :cond_2c
    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private consumeHeaderFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    .locals 5

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getId()I

    move-result v0

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getType()I

    move-result v2

    sget-object v3, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_STREAM:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v3}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;-><init>(IIZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V

    iput-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/RawFrame;->getPayloadContent()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Lorg/apache/hc/core5/http2/frame/FrameFlag;->PRIORITY:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v2}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    :cond_1
    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    if-nez v2, :cond_7

    invoke-virtual {p0, v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteInitiated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    if-le v0, v2, :cond_2

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    :cond_2
    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v2, :cond_3

    invoke-interface {v2, p0, v0, v1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onHeaderInput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V

    :cond_3
    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteClosed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isLocalReset()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    sget-object v0, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_STREAM:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v0}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->setRemoteEndStream()V

    :cond_5
    invoke-virtual {p2, v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->consumeHeader(Ljava/util/List;)V

    return-void

    :cond_6
    new-instance p1, Lorg/apache/hc/core5/http2/H2StreamResetException;

    sget-object p2, Lorg/apache/hc/core5/http2/H2Error;->STREAM_CLOSED:Lorg/apache/hc/core5/http2/H2Error;

    const-string v0, "Stream already closed"

    invoke-direct {p1, p2, v0}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v2, v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->copyPayload(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private consumePushPromiseFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/nio/ByteBuffer;Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V
    .locals 4

    invoke-virtual {p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getId()I

    move-result v0

    sget-object v1, Lorg/apache/hc/core5/http2/frame/FrameFlag;->END_HEADERS:Lorg/apache/hc/core5/http2/frame/FrameFlag;

    invoke-virtual {p1, v1}, Lorg/apache/hc/core5/http2/frame/Frame;->isFlagSet(Lorg/apache/hc/core5/http2/frame/FrameFlag;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    invoke-virtual {p1}, Lorg/apache/hc/core5/http2/frame/Frame;->getType()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, v2, v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;-><init>(IIZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V

    iput-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->continuation:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackDecoder:Lorg/apache/hc/core5/http2/hpack/HPackDecoder;

    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    if-le v0, p2, :cond_1

    iput v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    :cond_1
    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz p2, :cond_2

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onHeaderInput(Lorg/apache/hc/core5/http/HttpConnection;ILjava/util/List;)V

    :cond_2
    invoke-virtual {p3, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->consumePromise(Ljava/util/List;)V

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$Continuation;->copyPayload(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private consumeSettingsFrame(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-static {}, Lorg/apache/hc/core5/http2/config/H2Config;->initial()Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1}, Lorg/apache/hc/core5/http2/config/H2Param;->valueOf(I)Lorg/apache/hc/core5/http2/config/H2Param;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;->$SwitchMap$org$apache$hc$core5$http2$config$H2Param:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxHeaderListSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_1
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxFrameSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_2
    :try_start_2
    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setInitialWindowSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setPushEnabled(Z)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    goto :goto_0

    :pswitch_4
    :try_start_3
    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxConcurrentStreams(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :pswitch_5
    :try_start_4
    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setHeaderTableSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception p1

    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->build()Lorg/apache/hc/core5/http2/config/H2Config;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->applyRemoteSettings(Lorg/apache/hc/core5/http2/config/H2Config;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateStreamId()I
    .locals 3

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->idGenerator:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->generate(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private getValidStream(I)Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gt p1, v0, :cond_0

    new-instance p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->STREAM_CLOSED:Lorg/apache/hc/core5/http2/H2Error;

    const-string v1, "Stream closed"

    invoke-direct {p1, v0, v1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v2, "Unexpected stream id: "

    invoke-static {p1, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    sget-object v1, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v2, "Illegal stream id: "

    invoke-static {p1, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/hc/core5/http2/H2ConnectionException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    throw v0
.end method

.method private incrementInputCapacity(ILjava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 2

    if-lez p3, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-virtual {v0, p1, p3}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createWindowUpdate(II)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateInputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I

    :cond_0
    return-void
.end method

.method private maximizeConnWindow(I)V
    .locals 2

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createWindowUpdate(II)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateInputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I

    :cond_0
    return-void
.end method

.method private processPendingCommands()V
    .locals 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxConcurrentStreams()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->poll()Lorg/apache/hc/core5/reactor/Command;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v3, p0

    goto/16 :goto_3

    :cond_2
    instance-of v1, v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    if-eqz v1, :cond_6

    check-cast v0, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->getType()Lorg/apache/hc/core5/io/CloseMode;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->cancel()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    return-void

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->ACTIVE:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    sget-object v2, Lorg/apache/hc/core5/http2/H2Error;->NO_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    const-string v3, "Graceful shutdown"

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createGoAway(ILorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    goto :goto_2

    :cond_5
    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    :goto_2
    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    return-void

    :cond_6
    instance-of v1, v0, Lorg/apache/hc/core5/http2/nio/command/PingCommand;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/apache/hc/core5/http2/nio/command/PingCommand;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/nio/command/PingCommand;->getHandler()Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->pingHandlers:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    invoke-interface {v0}, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createPing(Ljava/nio/ByteBuffer;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_7
    move-object v3, p0

    goto/16 :goto_0

    :cond_8
    instance-of v1, v0, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->generateStreamId()I

    move-result v4

    new-instance v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;

    iget v6, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initInputWinSize:I

    iget v7, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->initOutputWinSize:I

    const/4 v5, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;IZII)V

    check-cast v0, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;

    iget-object v1, v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->httpProcessor:Lorg/apache/hc/core5/http/protocol/HttpProcessor;

    iget-object v5, v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    invoke-virtual {p0, v0, v2, v1, v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->createLocallyInitiatedStream(Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;

    move-result-object v1

    new-instance v5, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v2, v1, v6, v7}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2StreamChannelImpl;Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;ZLorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$1;)V

    iget-object v1, v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v1, :cond_9

    invoke-virtual {v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getInputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    invoke-interface {v2, p0, v4, v1, v1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onInputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V

    invoke-virtual {v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    invoke-interface {v2, p0, v4, v1, v1}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onOutputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V

    :cond_9
    invoke-virtual {v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isOutputReady()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v5}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->produceOutput()V

    :cond_a
    invoke-virtual {v0}, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;->getCancellableDependency()Lorg/apache/hc/core5/concurrent/CancellableDependency;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Lorg/apache/hc/core5/http2/impl/nio/a;

    invoke-direct {v1, v5}, Lorg/apache/hc/core5/http2/impl/nio/a;-><init>(Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/concurrent/CancellableDependency;->setDependency(Lorg/apache/hc/core5/concurrent/Cancellable;)V

    :cond_b
    iget-object v0, v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_3
    return-void
.end method

.method private produceOutput()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isLocalClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->produceOutput()V

    :cond_1
    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isTerminated()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->requestSessionOutput()V

    :cond_2
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    return-void
.end method

.method private requestSessionOutput()V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return-void
.end method

.method private streamData(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/nio/ByteBuffer;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamDataFrame(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v1

    :try_start_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamDataFrame(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw p1

    :cond_2
    return v1
.end method

.method private streamDataFrame(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/nio/ByteBuffer;I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, v1}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createData(ILjava/nio/ByteBuffer;Z)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p3}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onFrameOutput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p4, p4

    invoke-direct {p0, v1, v0, p4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateOutputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I

    invoke-direct {p0, p1, p2, p4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateOutputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    iget-object p2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {p1, p3, p2}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->write(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method private updateInputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I
    .locals 1

    invoke-direct {p0, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateWindow(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result p2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p3, p2}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onInputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V

    :cond_0
    return p2
.end method

.method private updateLastStreamId(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->lastStreamId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :cond_0
    return-void
.end method

.method private updateOutputWindow(ILjava/util/concurrent/atomic/AtomicInteger;I)I
    .locals 1

    invoke-direct {p0, p2, p3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->updateWindow(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result p2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p3, p2}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onOutputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V

    :cond_0
    return p2
.end method

.method private updateWindow(Ljava/util/concurrent/atomic/AtomicInteger;I)I
    .locals 8

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v1, v0

    int-to-long v3, p2

    add-long/2addr v1, v3

    const-wide v3, 0x80000000L

    cmp-long v3, v1, v3

    const-wide/32 v4, 0x7fffffff

    if-nez v3, :cond_1

    move-wide v1, v4

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_2

    long-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Update causes flow control window to exceed 2147483647"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract acceptHeaderFrame()V
.end method

.method public abstract acceptPushFrame()V
.end method

.method public abstract acceptPushRequest()V
.end method

.method public appendState(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "connState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", connInputWindow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", connOutputWindow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", outputQueue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", streamMap="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", processedRemoteStreamId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    sget-object v1, Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;->GRACEFUL:Lorg/apache/hc/core5/http/nio/command/ShutdownCommand;

    sget-object v2, Lorg/apache/hc/core5/reactor/Command$Priority;->IMMEDIATE:Lorg/apache/hc/core5/reactor/Command$Priority;

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public abstract createLocallyInitiatedStream(Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;)Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;
.end method

.method public abstract createRemotelyInitiatedStream(Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;Lorg/apache/hc/core5/http/protocol/HttpProcessor;Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;Lorg/apache/hc/core5/http/nio/HandlerFactory;)Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamChannel;",
            "Lorg/apache/hc/core5/http/protocol/HttpProcessor;",
            "Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;",
            "Lorg/apache/hc/core5/http/nio/HandlerFactory<",
            "Lorg/apache/hc/core5/http/nio/AsyncPushConsumer;",
            ">;)",
            "Lorg/apache/hc/core5/http2/impl/nio/H2StreamHandler;"
        }
    .end annotation
.end method

.method public decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/hc/core5/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->hPackDecoder:Lorg/apache/hc/core5/http2/hpack/HPackDecoder;

    invoke-virtual {v0, p1}, Lorg/apache/hc/core5/http2/hpack/HPackDecoder;->decodeHeaders(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEndpointDetails()Lorg/apache/hc/core5/http/EndpointDetails;
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v2}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connMetrics:Lorg/apache/hc/core5/http/impl/BasicHttpConnectionMetrics;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v4}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/hc/core5/http/impl/BasicEndpointDetails;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/hc/core5/http/HttpConnectionMetrics;Lorg/apache/hc/core5/util/Timeout;)V

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->endpointDetails:Lorg/apache/hc/core5/http/EndpointDetails;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/hc/core5/http/ProtocolVersion;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/HttpVersion;->HTTP_2:Lorg/apache/hc/core5/http/HttpVersion;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

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

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->ACTIVE:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onConnect()V
    .locals 9

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->ACTIVE:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    new-instance v1, Lorg/apache/hc/core5/http2/config/H2Setting;

    sget-object v2, Lorg/apache/hc/core5/http2/config/H2Param;->HEADER_TABLE_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/config/H2Config;->getHeaderTableSize()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http2/config/H2Setting;-><init>(Lorg/apache/hc/core5/http2/config/H2Param;I)V

    new-instance v2, Lorg/apache/hc/core5/http2/config/H2Setting;

    sget-object v3, Lorg/apache/hc/core5/http2/config/H2Param;->ENABLE_PUSH:Lorg/apache/hc/core5/http2/config/H2Param;

    iget-object v4, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v4}, Lorg/apache/hc/core5/http2/config/H2Config;->isPushEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http2/config/H2Setting;-><init>(Lorg/apache/hc/core5/http2/config/H2Param;I)V

    new-instance v3, Lorg/apache/hc/core5/http2/config/H2Setting;

    sget-object v4, Lorg/apache/hc/core5/http2/config/H2Param;->MAX_CONCURRENT_STREAMS:Lorg/apache/hc/core5/http2/config/H2Param;

    iget-object v5, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v5}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxConcurrentStreams()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http2/config/H2Setting;-><init>(Lorg/apache/hc/core5/http2/config/H2Param;I)V

    new-instance v4, Lorg/apache/hc/core5/http2/config/H2Setting;

    sget-object v5, Lorg/apache/hc/core5/http2/config/H2Param;->INITIAL_WINDOW_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    iget-object v6, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v6}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/core5/http2/config/H2Setting;-><init>(Lorg/apache/hc/core5/http2/config/H2Param;I)V

    new-instance v5, Lorg/apache/hc/core5/http2/config/H2Setting;

    sget-object v6, Lorg/apache/hc/core5/http2/config/H2Param;->MAX_FRAME_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    iget-object v7, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v7}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/apache/hc/core5/http2/config/H2Setting;-><init>(Lorg/apache/hc/core5/http2/config/H2Param;I)V

    new-instance v6, Lorg/apache/hc/core5/http2/config/H2Setting;

    sget-object v7, Lorg/apache/hc/core5/http2/config/H2Param;->MAX_HEADER_LIST_SIZE:Lorg/apache/hc/core5/http2/config/H2Param;

    iget-object v8, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localConfig:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-virtual {v8}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxHeaderListSize()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/apache/hc/core5/http2/config/H2Setting;-><init>(Lorg/apache/hc/core5/http2/config/H2Param;I)V

    filled-new-array/range {v1 .. v6}, [Lorg/apache/hc/core5/http2/config/H2Setting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createSettings([Lorg/apache/hc/core5/http2/config/H2Setting;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->TRANSMITTED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->maximizeConnWindow(I)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connInputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2, v0, v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onInputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    invoke-interface {v1, p0, v2, v0, v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onOutputFlowControl(Lorg/apache/hc/core5/http/HttpConnection;III)V

    :cond_0
    return-void
.end method

.method public final onDisconnect()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->pingHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->cancel()V

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->poll()Lorg/apache/hc/core5/reactor/Command;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;

    new-instance v1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;->failed(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/Exception;)V
    .locals 4

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->pingHandlers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/http2/nio/AsyncPingHandler;->failed(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->poll()Lorg/apache/hc/core5/reactor/Command;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;

    new-instance v1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    invoke-direct {v1}, Lorg/apache/hc/core5/http/ConnectionClosedException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/nio/command/ExecutableCommand;->failed(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/apache/hc/core5/concurrent/Cancellable;->cancel()Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v1, p1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->reset(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    instance-of v0, p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_6

    instance-of v0, p1, Lorg/apache/hc/core5/http2/H2ConnectionException;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/apache/hc/core5/http2/H2ConnectionException;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/H2ConnectionException;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/hc/core5/http2/H2Error;->getByCode(I)Lorg/apache/hc/core5/http2/H2Error;

    move-result-object v0

    goto :goto_3

    :cond_4
    instance-of v0, p1, Lorg/apache/hc/core5/http/ProtocolException;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->PROTOCOL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    goto :goto_3

    :cond_5
    sget-object v0, Lorg/apache/hc/core5/http2/H2Error;->INTERNAL_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    :goto_3
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    iget v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createGoAway(ILorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    instance-of v0, p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    if-eqz v0, :cond_7

    :goto_4
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_6

    :cond_7
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_8

    :goto_5
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_6

    :cond_8
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    :goto_6
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void

    :goto_7
    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    instance-of v1, p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    if-nez v1, :cond_a

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_9

    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_8

    :cond_9
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    goto :goto_8

    :cond_a
    sget-object p1, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    :goto_8
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    throw v0

    :catch_0
    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    instance-of v0, p1, Lorg/apache/hc/core5/http/ConnectionClosedException;

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_8

    goto :goto_5
.end method

.method public final onInput(Ljava/nio/ByteBuffer;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->inputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v0, p1, v1}, Lorg/apache/hc/core5/http2/impl/nio/FrameInputBuffer;->read(Ljava/nio/ByteBuffer;Ljava/nio/channels/ReadableByteChannel;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/frame/Frame;->getStreamId()I

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onFrameInput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->consumeFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    goto :goto_0
.end method

.method public final onOutput()V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->flush(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/http2/frame/RawFrame;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamListener:Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/frame/Frame;->getStreamId()I

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lorg/apache/hc/core5/http2/impl/nio/H2StreamListener;->onFrameOutput(Lorg/apache/hc/core5/http/HttpConnection;ILorg/apache/hc/core5/http2/frame/RawFrame;)V

    :cond_1
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-virtual {v1, v0, v2}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->write(Lorg/apache/hc/core5/http2/frame/RawFrame;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_7

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->ACKED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->produceOutput()V

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connOutputWindow:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isLocalClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getOutputWindow()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v3}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isOutputReady()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v3}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez v2, :cond_6

    :try_start_1
    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :goto_3
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->ACTIVE:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->remoteSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->ACKED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    if-ne v0, v2, :cond_8

    invoke-direct {p0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processPendingCommands()V

    :cond_8
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->GRACEFUL_SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isLocalClosed()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->isRemoteClosed()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->idGenerator:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getId()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->isSameSide(I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->getId()I

    move-result v2

    iget v3, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    if-gt v2, v3, :cond_9

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    if-nez v1, :cond_d

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    :cond_d
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    invoke-virtual {v1}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->releaseResources()V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_f
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputBuffer:Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/impl/nio/FrameOutputBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->outputQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_10
    :goto_7
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_8
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_11
    return-void

    :goto_9
    iget-object v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final onTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 7

    sget-object v0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;->SHUTDOWN:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iput-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->connState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$ConnectionHandshake;

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->localSettingState:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    sget-object v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;->ACKED:Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$SettingsHandshake;

    const-string v2, "Timeout due to inactivity ("

    const-string v3, ")"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    sget-object v4, Lorg/apache/hc/core5/http2/H2Error;->SETTINGS_TIMEOUT:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Setting timeout ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createGoAway(ILorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->frameFactory:Lorg/apache/hc/core5/http2/frame/FrameFactory;

    iget v1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->processedRemoteStreamId:I

    sget-object v4, Lorg/apache/hc/core5/http2/H2Error;->NO_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/apache/hc/core5/http2/frame/FrameFactory;->createGoAway(ILorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)Lorg/apache/hc/core5/http2/frame/RawFrame;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->commitFrame(Lorg/apache/hc/core5/http2/frame/RawFrame;)V

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;

    new-instance v4, Lorg/apache/hc/core5/http2/H2StreamResetException;

    sget-object v5, Lorg/apache/hc/core5/http2/H2Error;->NO_ERROR:Lorg/apache/hc/core5/http2/H2Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/hc/core5/http2/H2StreamResetException;-><init>(Lorg/apache/hc/core5/http2/H2Error;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer$H2Stream;->reset(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->streamMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http2/impl/nio/AbstractH2StreamMultiplexer;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method
