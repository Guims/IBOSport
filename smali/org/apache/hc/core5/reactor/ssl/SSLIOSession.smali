.class public Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Internal;
.end annotation


# static fields
.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private appEventMask:I

.field private volatile endOfStream:Z

.field private final handshakeCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Ljavax/net/ssl/SSLSession;",
            ">;>;"
        }
    .end annotation
.end field

.field private final handshakeStateRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;",
            ">;"
        }
    .end annotation
.end field

.field private final handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

.field private final inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

.field private final initializer:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

.field private final internalEventHandler:Lorg/apache/hc/core5/reactor/IOEventHandler;

.field private final outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

.field private final outboundClosedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final session:Lorg/apache/hc/core5/reactor/IOSession;

.field private final sessionEndCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionStartCallback:Lorg/apache/hc/core5/function/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile socketTimeout:Lorg/apache/hc/core5/util/Timeout;

.field private final sslEngine:Ljavax/net/ssl/SSLEngine;

.field private final sslMode:Lorg/apache/hc/core5/reactor/ssl/SSLMode;

.field private volatile status:Lorg/apache/hc/core5/reactor/IOSession$Status;

.field private final targetEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

.field private volatile tlsDetails:Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

.field private final verifier:Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/ssl/SSLMode;Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLMode;",
            "Ljavax/net/ssl/SSLContext;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;",
            ">;",
            "Lorg/apache/hc/core5/util/Timeout;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v11}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;-><init>(Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/ssl/SSLMode;Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/hc/core5/net/NamedEndpoint;Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/reactor/ssl/SSLMode;Ljavax/net/ssl/SSLContext;Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/function/Callback;Lorg/apache/hc/core5/concurrent/FutureCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/hc/core5/net/NamedEndpoint;",
            "Lorg/apache/hc/core5/reactor/IOSession;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLMode;",
            "Ljavax/net/ssl/SSLContext;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;",
            "Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;",
            "Lorg/apache/hc/core5/util/Timeout;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;",
            ">;",
            "Lorg/apache/hc/core5/function/Callback<",
            "Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;",
            ">;",
            "Lorg/apache/hc/core5/concurrent/FutureCallback<",
            "Ljavax/net/ssl/SSLSession;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->ACTIVE:Lorg/apache/hc/core5/reactor/IOSession$Status;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    const-string v0, "IO session"

    invoke-static {p2, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SSL context"

    invoke-static {p4, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->targetEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslMode:Lorg/apache/hc/core5/reactor/ssl/SSLMode;

    iput-object p6, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->initializer:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    iput-object p7, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->verifier:Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;

    iput-object p9, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sessionStartCallback:Lorg/apache/hc/core5/function/Callback;

    iput-object p10, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sessionEndCallback:Lorg/apache/hc/core5/function/Callback;

    new-instance p6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p6, p11}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p6, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p2}, Lorg/apache/hc/core5/reactor/IOSession;->getEventMask()I

    move-result p6

    iput p6, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    sget-object p6, Lorg/apache/hc/core5/reactor/ssl/SSLMode;->CLIENT:Lorg/apache/hc/core5/reactor/ssl/SSLMode;

    if-ne p3, p6, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getHostName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lorg/apache/hc/core5/net/NamedEndpoint;->getPort()I

    move-result p1

    invoke-virtual {p4, p3, p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p3

    invoke-static {p5, p3}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->create(Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;I)Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-static {p5, p3}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->create(Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;I)Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result p1

    invoke-static {p5, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->create(Lorg/apache/hc/core5/reactor/ssl/SSLBufferMode;I)Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outboundClosedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p3, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->READY:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p8, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    new-instance p1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;

    invoke-direct {p1, p0, p8, p2}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$1;-><init>(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/util/Timeout;Lorg/apache/hc/core5/reactor/IOSession;)V

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->internalEventHandler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->receiveEncryptedData()I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doHandshake(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->decryptData(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->updateEventMask()V

    return-void
.end method

.method public static synthetic access$400(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->encryptData(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public static synthetic access$500(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sendEncryptedData()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljavax/net/ssl/SSLEngine;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 0

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->ensureHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private convert(Ljava/lang/RuntimeException;)Ljavax/net/ssl/SSLException;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private decryptData(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_b

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0, v0, v1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doUnwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v1, "Unable to complete SSL handshake"

    invoke-direct {p1, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_1
    iget-object v4, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    :cond_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->ensureHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v1

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    invoke-interface {v4, p1, v5}, Lorg/apache/hc/core5/reactor/IOEventHandler;->inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw p1

    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v1, v4, :cond_8

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v1, v3, :cond_7

    iget-boolean v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v1, "Unable to decrypt incoming data due to unexpected end of stream"

    invoke-direct {p1, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_4
    :try_start_4
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    goto/16 :goto_0

    :goto_5
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_9
    :goto_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    :cond_a
    throw p1

    :cond_b
    :goto_8
    iget-boolean v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->ensureHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V

    :cond_c
    return-void
.end method

.method private doHandshake(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_d

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outboundClosedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_0

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :cond_0
    sget-object v5, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$2;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x0

    if-eq v4, v0, :cond_a

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    move v2, v5

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doRunTask()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v4}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :try_start_0
    invoke-direct {p0, v3, v4}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doUnwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    :try_start_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v0, "Input buffer is full"

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    :cond_6
    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v6, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSING:Lorg/apache/hc/core5/reactor/IOSession$Status;

    invoke-virtual {v3, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_7

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    :cond_7
    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v3, v6, :cond_8

    move-object v3, v4

    goto :goto_1

    :cond_8
    move-object v3, v4

    goto/16 :goto_0

    :goto_3
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    :cond_9
    throw p1

    :catchall_1
    move-exception p1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    throw p1

    :cond_a
    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v3}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v3}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v3}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doWrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v4, v6, :cond_b

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v4, v6, :cond_c

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_b
    :goto_4
    move v2, v5

    :cond_c
    iget-object v4, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v4}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :goto_5
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_d
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->COMPLETE:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-interface {v0, v2}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->verifier:Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;

    if-eqz v0, :cond_e

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->targetEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-interface {v0, v2, v3}, Lorg/apache/hc/core5/reactor/ssl/SSLSessionVerifier;->verify(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->tlsDetails:Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    :cond_e
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->tlsDetails:Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-static {v2}, Landroidx/lifecycle/D;->g(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    invoke-direct {v3, v0, v2}, Lorg/apache/hc/core5/reactor/ssl/TlsDetails;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->tlsDetails:Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    :cond_f
    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->ensureHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sessionStartCallback:Lorg/apache/hc/core5/function/Callback;

    if-eqz p1, :cond_10

    invoke-interface {p1, p0}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V

    :cond_10
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz p1, :cond_11

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private doRunTask()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private doUnwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->convert(Ljava/lang/RuntimeException;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1
.end method

.method private doWrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->convert(Ljava/lang/RuntimeException;)Ljavax/net/ssl/SSLException;

    move-result-object p1

    throw p1
.end method

.method private encryptData(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->ACTIVE:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->ensureHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOEventHandler;->outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V

    :cond_1
    return-void

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private ensureHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    const-string v1, "IO event handler"

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static formatOps(Ljava/lang/StringBuilder;I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_0

    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 p1, p1, 0x4

    if-lez p1, :cond_1

    const/16 p1, 0x77

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private initialize(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeTimeout:Lorg/apache/hc/core5/util/Timeout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSING:Lorg/apache/hc/core5/reactor/IOSession$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_1

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$2;->$SwitchMap$org$apache$hc$core5$reactor$ssl$SSLMode:[I

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslMode:Lorg/apache/hc/core5/reactor/ssl/SSLMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->initializer:Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->targetEndpoint:Lorg/apache/hc/core5/net/NamedEndpoint;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-interface {v0, v1, v2}, Lorg/apache/hc/core5/reactor/ssl/SSLSessionInitializer;->initialize(Lorg/apache/hc/core5/net/NamedEndpoint;Ljavax/net/ssl/SSLEngine;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->HANDSHAKING:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doHandshake(Lorg/apache/hc/core5/reactor/IOSession;)V

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->updateEventMask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private receiveEncryptedData()I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v2, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    :cond_1
    if-ne v2, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    :cond_2
    return v2
.end method

.method private sendEncryptedData()I
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v2, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSED:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    throw v1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updateEventMask()V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->ACTIVE:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSING:Lorg/apache/hc/core5/reactor/IOSession$Status;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeCallbackRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/hc/core5/concurrent/FutureCallback;

    if-eqz v0, :cond_1

    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "TLS handshake failed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSING:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outboundClosedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSED:Lorg/apache/hc/core5/reactor/IOSession$Status;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    :cond_4
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_5

    iget-boolean v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_5

    sget-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSED:Lorg/apache/hc/core5/reactor/IOSession$Status;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v2, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSED:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->close()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sessionEndCallback:Lorg/apache/hc/core5/function/Callback;

    if-eqz v0, :cond_6

    invoke-interface {v0, p0}, Lorg/apache/hc/core5/function/Callback;->execute(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_7
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v2, :cond_8

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doRunTask()V

    :cond_8
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getEventMask()I

    move-result v0

    sget-object v2, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$2;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    move v3, v0

    goto :goto_2

    :cond_9
    iget v3, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    goto :goto_2

    :cond_a
    const/4 v3, 0x5

    :cond_b
    :goto_2
    iget-boolean v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v2}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v2

    if-nez v2, :cond_c

    and-int/lit8 v3, v3, -0x2

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v2, v1, :cond_d

    or-int/lit8 v3, v3, 0x1

    :cond_d
    :goto_3
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v1}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v3, v3, 0x4

    goto :goto_4

    :cond_e
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_f

    and-int/lit8 v3, v3, -0x5

    :cond_f
    :goto_4
    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, v3}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_5
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public beginHandshake(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->READY:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;

    sget-object v2, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->INITIALIZED:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->initialize(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    return-void
.end method

.method public channel()Ljava/nio/channels/ByteChannel;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->channel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public clearEvent(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->updateEventMask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public close()V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-virtual {p0, v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v0, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSING:Lorg/apache/hc/core5/reactor/IOSession$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_0

    :goto_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iput-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/hc/core5/util/Timeout;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofMilliseconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->updateEventMask()V
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :catch_1
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->GRACEFUL:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->CLOSED:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->release()V

    iput-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->setEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p2}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getEventMask()I
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->internalEventHandler:Lorg/apache/hc/core5/reactor/IOEventHandler;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastEventTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReadTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastReadTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastWriteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOSession$Status;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    return-object v0
.end method

.method public getTlsDetails()Lorg/apache/hc/core5/reactor/ssl/TlsDetails;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->tlsDetails:Lorg/apache/hc/core5/reactor/ssl/TlsDetails;

    return-object v0
.end method

.method public hasCommands()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->hasCommands()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->ACTIVE:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public poll()Lorg/apache/hc/core5/reactor/Command;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->poll()Lorg/apache/hc/core5/reactor/Command;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 0

    iget-boolean p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEvent(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->updateEventMask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setEventMask(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->updateEventMask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->socketTimeout:Lorg/apache/hc/core5/util/Timeout;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "]["

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->appEventMask:I

    invoke-static {v1, v2}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->formatOps(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "][inbound done]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->sslEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "][outbound done]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->endOfStream:Z

    if-eqz v2, :cond_2

    const-string v2, "][EOF]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v2}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v2}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v2}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->inPlain:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v2}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->hasData()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :goto_4
    iget-object v1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public updateReadTime()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->updateReadTime()V

    return-void
.end method

.method public updateWriteTime()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->updateWriteTime()V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2

    const-string v0, "Byte buffer"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->status:Lorg/apache/hc/core5/reactor/IOSession$Status;

    sget-object v1, Lorg/apache/hc/core5/reactor/IOSession$Status;->ACTIVE:Lorg/apache/hc/core5/reactor/IOSession$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->handshakeStateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;->READY:Lorg/apache/hc/core5/reactor/ssl/SSLIOSession$TLSHandShakeState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {p1}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->outEncrypted:Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;

    invoke-virtual {v0}, Lorg/apache/hc/core5/reactor/ssl/SSLManagedBuffer;->acquire()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->doWrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/ssl/SSLIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
