.class Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOSession;


# instance fields
.field private final log:LO5/a;

.field private final session:Lorg/apache/hc/core5/reactor/IOSession;

.field private final wireLog:LO5/a;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/IOSession;LO5/a;LO5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    iput-object p2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iput-object p3, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->wireLog:LO5/a;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;)LO5/a;
    .locals 0

    iget-object p0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->wireLog:LO5/a;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->logData(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method private static formatOps(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_0

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_1

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_2

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p0, p0, 0x8

    if-lez p0, :cond_3

    const/16 p0, 0x63

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private logData(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v1, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move v5, v3

    :goto_1
    const/16 v6, 0x20

    if-ge v5, v4, :cond_2

    aget-byte v7, v1, v5

    int-to-char v7, v7

    if-le v7, v6, :cond_0

    const/16 v8, 0x7f

    if-gt v7, v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_3
    const/16 v7, 0x11

    if-ge v5, v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->wireLog:LO5/a;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, LO5/a;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/ByteChannel;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->channel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public clearEvent(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->clearEvent(I)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->formatOps(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} Event cleared {}"

    invoke-interface {v0, v1, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    const-string v1, "{} Close"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, v2, v1}, LO5/a;->z(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->close()V

    return-void
.end method

.method public close(Lorg/apache/hc/core5/io/CloseMode;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    const-string v1, "{} Close {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    return-void
.end method

.method public enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1, p2}, Lorg/apache/hc/core5/reactor/IOSession;->enqueue(Lorg/apache/hc/core5/reactor/Command;Lorg/apache/hc/core5/reactor/Command$Priority;)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "{} Enqueued {} with priority {}"

    invoke-interface {v0, p2, p1}, LO5/a;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getEventMask()I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getEventMask()I

    move-result v0

    return v0
.end method

.method public getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getHandler()Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/util/Identifiable;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastEventTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastReadTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastReadTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLastWriteTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getSocketTimeout()Lorg/apache/hc/core5/util/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lorg/apache/hc/core5/reactor/IOSession$Status;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->getStatus()Lorg/apache/hc/core5/reactor/IOSession$Status;

    move-result-object v0

    return-object v0
.end method

.method public hasCommands()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->hasCommands()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public poll()Lorg/apache/hc/core5/reactor/Command;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->poll()Lorg/apache/hc/core5/reactor/Command;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "{} {} bytes read"

    invoke-interface {v1, v2, v3, v4}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->wireLog:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v1, "<< "

    invoke-direct {p0, p1, v1}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->logData(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public setEvent(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setEvent(I)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->formatOps(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} Event set {}"

    invoke-interface {v0, v1, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEventMask(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-static {p1}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->formatOps(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "{} Event mask set {}"

    invoke-interface {v0, v1, p1, v2}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    const-string v1, "{} Set timeout {}"

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, v2, p1, v1}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Lorg/apache/hc/core5/reactor/IOSession;->setSocketTimeout(Lorg/apache/hc/core5/util/Timeout;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateReadTime()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->updateReadTime()V

    return-void
.end method

.method public updateWriteTime()V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0}, Lorg/apache/hc/core5/reactor/IOSession;->updateWriteTime()V

    return-void
.end method

.method public upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V
    .locals 4

    const-string v0, "Protocol handler"

    invoke-static {p1, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v0}, LO5/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "{} protocol upgrade {}"

    invoke-interface {v0, v1, v2, v3}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    new-instance v1, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession$1;-><init>(Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    invoke-interface {v0, v1}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-interface {v0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->log:LO5/a;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->session:Lorg/apache/hc/core5/reactor/IOSession;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "{} {} bytes written"

    invoke-interface {v1, v2, v3, v4}, LO5/a;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->wireLog:LO5/a;

    invoke-interface {v1}, LO5/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v1, ">> "

    invoke-direct {p0, p1, v1}, Lorg/apache/hc/client5/http/impl/async/LoggingIOSession;->logData(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    :cond_1
    return v0
.end method
