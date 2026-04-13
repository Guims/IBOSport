.class public Lorg/apache/hc/core5/http2/config/H2Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

.field public static final INIT:Lorg/apache/hc/core5/http2/config/H2Config;

.field private static final INIT_CONCURRENT_STREAM:I = 0xfa

.field private static final INIT_ENABLE_PUSH:Z = true

.field private static final INIT_HEADER_TABLE_SIZE:I = 0x1000

.field private static final INIT_MAX_FRAME_SIZE:I = 0x4000

.field private static final INIT_WINDOW_SIZE:I = 0xffff


# instance fields
.field private final compressionEnabled:Z

.field private final headerTableSize:I

.field private final initialWindowSize:I

.field private final maxConcurrentStreams:I

.field private final maxFrameSize:I

.field private final maxHeaderListSize:I

.field private final pushEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/apache/hc/core5/http2/config/H2Config;->custom()Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->build()Lorg/apache/hc/core5/http2/config/H2Config;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/config/H2Config;->DEFAULT:Lorg/apache/hc/core5/http2/config/H2Config;

    invoke-static {}, Lorg/apache/hc/core5/http2/config/H2Config;->initial()Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->build()Lorg/apache/hc/core5/http2/config/H2Config;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http2/config/H2Config;->INIT:Lorg/apache/hc/core5/http2/config/H2Config;

    return-void
.end method

.method public constructor <init>(IZIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->headerTableSize:I

    iput-boolean p2, p0, Lorg/apache/hc/core5/http2/config/H2Config;->pushEnabled:Z

    iput p3, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxConcurrentStreams:I

    iput p4, p0, Lorg/apache/hc/core5/http2/config/H2Config;->initialWindowSize:I

    iput p5, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxFrameSize:I

    iput p6, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxHeaderListSize:I

    iput-boolean p7, p0, Lorg/apache/hc/core5/http2/config/H2Config;->compressionEnabled:Z

    return-void
.end method

.method public static copy(Lorg/apache/hc/core5/http2/config/H2Config;)Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 2

    const-string v0, "Connection config"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/config/H2Config;->getHeaderTableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setHeaderTableSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/config/H2Config;->isPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setPushEnabled(Z)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxConcurrentStreams()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxConcurrentStreams(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/config/H2Config;->getInitialWindowSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setInitialWindowSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxFrameSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxFrameSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/config/H2Config;->getMaxHeaderListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxHeaderListSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http2/config/H2Config;->isCompressionEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setCompressionEnabled(Z)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;-><init>()V

    return-object v0
.end method

.method public static initial()Lorg/apache/hc/core5/http2/config/H2Config$Builder;
    .locals 3

    new-instance v0, Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;-><init>()V

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setHeaderTableSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setPushEnabled(Z)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxConcurrentStreams(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxFrameSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    const v2, 0xffff

    invoke-virtual {v0, v2}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setInitialWindowSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http2/config/H2Config$Builder;->setMaxHeaderListSize(I)Lorg/apache/hc/core5/http2/config/H2Config$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHeaderTableSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/config/H2Config;->headerTableSize:I

    return v0
.end method

.method public getInitialWindowSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/config/H2Config;->initialWindowSize:I

    return v0
.end method

.method public getMaxConcurrentStreams()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxConcurrentStreams:I

    return v0
.end method

.method public getMaxFrameSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxFrameSize:I

    return v0
.end method

.method public getMaxHeaderListSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxHeaderListSize:I

    return v0
.end method

.method public isCompressionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/config/H2Config;->compressionEnabled:Z

    return v0
.end method

.method public isPushEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http2/config/H2Config;->pushEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[headerTableSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->headerTableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pushEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->pushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxConcurrentStreams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxConcurrentStreams:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initialWindowSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->initialWindowSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxFrameSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxFrameSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderListSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->maxHeaderListSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compressionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/hc/core5/http2/config/H2Config;->compressionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
