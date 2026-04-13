.class public Lorg/apache/hc/core5/http/config/Http1Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/http/config/Http1Config$Builder;
    }
.end annotation

.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

.field private static final INIT_BUF_CHUNK:I = -0x1

.field private static final INIT_BUF_SIZE:I = 0x2000

.field private static final INIT_MAX_EMPTY_LINE_COUNT:I = 0xa

.field private static final INIT_MAX_HEADER_COUNT:I = -0x1

.field private static final INIT_MAX_LINE_LENGTH:I = -0x1

.field private static final INIT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;

.field private static final INIT_WINDOW_SIZE:I = 0xffff


# instance fields
.field private final bufferSize:I

.field private final chunkSizeHint:I

.field private final initialWindowSize:I

.field private final maxEmptyLineCount:I

.field private final maxHeaderCount:I

.field private final maxLineLength:I

.field private final waitForContinueTimeout:Lorg/apache/hc/core5/util/Timeout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->build()Lorg/apache/hc/core5/http/config/Http1Config;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/config/Http1Config;->DEFAULT:Lorg/apache/hc/core5/http/config/Http1Config;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Lorg/apache/hc/core5/util/Timeout;->ofSeconds(J)Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/config/Http1Config;->INIT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;

    return-void
.end method

.method public constructor <init>(IILorg/apache/hc/core5/util/Timeout;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->bufferSize:I

    iput p2, p0, Lorg/apache/hc/core5/http/config/Http1Config;->chunkSizeHint:I

    iput-object p3, p0, Lorg/apache/hc/core5/http/config/Http1Config;->waitForContinueTimeout:Lorg/apache/hc/core5/util/Timeout;

    iput p4, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxLineLength:I

    iput p5, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxHeaderCount:I

    iput p6, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxEmptyLineCount:I

    iput p7, p0, Lorg/apache/hc/core5/http/config/Http1Config;->initialWindowSize:I

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/config/Http1Config;->INIT_WAIT_FOR_CONTINUE:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public static copy(Lorg/apache/hc/core5/http/config/Http1Config;)Lorg/apache/hc/core5/http/config/Http1Config$Builder;
    .locals 2

    const-string v0, "Config"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/Http1Config;->getBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->setBufferSize(I)Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/Http1Config;->getChunkSizeHint()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->setChunkSizeHint(I)Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/Http1Config;->getWaitForContinueTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->setWaitForContinueTimeout(Lorg/apache/hc/core5/util/Timeout;)Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxHeaderCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->setMaxHeaderCount(I)Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxLineLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->setMaxLineLength(I)Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/Http1Config;->getMaxEmptyLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->setMaxEmptyLineCount(I)Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/hc/core5/http/config/Http1Config;->getInitialWindowSize()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;->setInitialWindowSize(I)Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static custom()Lorg/apache/hc/core5/http/config/Http1Config$Builder;
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http/config/Http1Config$Builder;

    invoke-direct {v0}, Lorg/apache/hc/core5/http/config/Http1Config$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/config/Http1Config;->bufferSize:I

    return v0
.end method

.method public getChunkSizeHint()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/config/Http1Config;->chunkSizeHint:I

    return v0
.end method

.method public getInitialWindowSize()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/config/Http1Config;->initialWindowSize:I

    return v0
.end method

.method public getMaxEmptyLineCount()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxEmptyLineCount:I

    return v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLength()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxLineLength:I

    return v0
.end method

.method public getWaitForContinueTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/http/config/Http1Config;->waitForContinueTimeout:Lorg/apache/hc/core5/util/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[bufferSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chunkSizeHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->chunkSizeHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", waitForContinueTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->waitForContinueTimeout:Lorg/apache/hc/core5/util/Timeout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxLineLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxLineLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxHeaderCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxEmptyLineCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->maxEmptyLineCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initialWindowSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/hc/core5/http/config/Http1Config;->initialWindowSize:I

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lcom/google/android/material/datepicker/e;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
