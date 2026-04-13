.class final Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/core5/reactor/IOEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;
    }
.end annotation


# static fields
.field private static final ATYP_DOMAINNAME:B = 0x3t

.field private static final CLIENT_VERSION:B = 0x5t

.field private static final COMMAND_CONNECT:B = 0x1t

.field private static final MAX_COMMAND_CONNECT_LENGTH:I = 0x16

.field private static final NO_AUTHENTICATION_REQUIRED:B = 0x0t

.field private static final SUCCESS:B = 0x0t

.field private static final USERNAME_PASSWORD:B = 0x2t

.field private static final USERNAME_PASSWORD_VERSION:B = 0x1t


# instance fields
.field private final attachment:Ljava/lang/Object;

.field private buffer:Ljava/nio/ByteBuffer;

.field private final eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

.field private final ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

.field private final password:Ljava/lang/String;

.field private state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

.field private final targetAddress:Ljava/net/InetSocketAddress;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    sget-object v0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->SEND_AUTH:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->attachment:Ljava/lang/Object;

    iput-object p3, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->targetAddress:Ljava/net/InetSocketAddress;

    iput-object p4, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->username:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->password:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    return-void
.end method

.method private fillBuffer(Ljava/nio/channels/ByteChannel;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private prepareConnectCommand()V
    .locals 5

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->targetAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->targetAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/16 v2, 0x16

    invoke-direct {p0, v2}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->setBufferLimit(I)V

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_0
    iget-object v2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unsupported remote address class: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v0
.end method

.method private setBufferLimit(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private writeAndPrepareRead(Ljava/nio/channels/ByteChannel;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->writeBuffer(Ljava/nio/channels/ByteChannel;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-direct {p0, p2}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->setBufferLimit(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private writeBuffer(Ljava/nio/channels/ByteChannel;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    iget-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public connected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    return-void
.end method

.method public disconnected(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/hc/core5/http/nio/command/CommandSupport;->cancelCommands(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void
.end method

.method public exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/io/CloseMode;->IMMEDIATE:Lorg/apache/hc/core5/io/CloseMode;

    invoke-interface {p1, v0}, Lorg/apache/hc/core5/io/ModalCloseable;->close(Lorg/apache/hc/core5/io/CloseMode;)V

    invoke-static {p1, p2}, Lorg/apache/hc/core5/http/nio/command/CommandSupport;->failCommands(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public inputReady(Lorg/apache/hc/core5/reactor/IOSession;Ljava/nio/ByteBuffer;)V
    .locals 7

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected input data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    sget-object p2, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$1;->$SwitchMap$org$apache$hc$core5$reactor$SocksProxyProtocolHandler$State:[I

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "SOCKS server returned unsupported version: "

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->fillBuffer(Ljava/nio/channels/ByteChannel;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    iget-object v6, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-ne p2, v3, :cond_2

    if-nez v6, :cond_1

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object p2, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->RECEIVE_ADDRESS_TYPE:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SOCKS server was unable to establish connection returned error code: "

    invoke-static {v6, p2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->fillBuffer(Ljava/nio/channels/ByteChannel;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ne p2, v5, :cond_4

    const/16 v5, 0x10

    goto :goto_2

    :cond_4
    if-ne p2, v4, :cond_5

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 v5, p2, 0xff

    :goto_2
    add-int/2addr v5, v0

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object p2, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->RECEIVE_ADDRESS:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SOCKS server returned unsupported address type: "

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_3
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->fillBuffer(Ljava/nio/channels/ByteChannel;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object p1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->COMPLETE:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iget-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->eventHandlerFactory:Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->attachment:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lorg/apache/hc/core5/reactor/IOEventHandlerFactory;->createHandler(Lorg/apache/hc/core5/reactor/ProtocolIOSession;Ljava/lang/Object;)Lorg/apache/hc/core5/reactor/IOEventHandler;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p2, p1}, Lorg/apache/hc/core5/reactor/IOSession;->upgrade(Lorg/apache/hc/core5/reactor/IOEventHandler;)V

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->ioSession:Lorg/apache/hc/core5/reactor/ProtocolIOSession;

    invoke-interface {p1, p2}, Lorg/apache/hc/core5/reactor/IOEventHandler;->connected(Lorg/apache/hc/core5/reactor/IOSession;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->fillBuffer(Ljava/nio/channels/ByteChannel;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    if-nez p2, :cond_6

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->prepareConnectCommand()V

    invoke-interface {p1, v5}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    sget-object p1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->SEND_CONNECT:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    return-void

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Authentication failed for external SOCKS proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    invoke-direct {p0, p1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->fillBuffer(Ljava/nio/channels/ByteChannel;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    iget-object v6, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-ne p2, v3, :cond_9

    if-ne v6, v0, :cond_7

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->username:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->setBufferLimit(I)V

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->username:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-interface {p1, v5}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    sget-object p1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->SEND_USERNAME_PASSWORD:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    return-void

    :cond_7
    if-nez v6, :cond_8

    invoke-direct {p0}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->prepareConnectCommand()V

    invoke-interface {p1, v5}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    sget-object p1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->SEND_CONNECT:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    return-void

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SOCKS server return unsupported authentication method: "

    invoke-static {v6, p2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-static {p2, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    return-void

    :pswitch_5
    invoke-interface {p1, v5}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outputReady(Lorg/apache/hc/core5/reactor/IOSession;)V
    .locals 3

    sget-object v0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$1;->$SwitchMap$org$apache$hc$core5$reactor$SocksProxyProtocolHandler$State:[I

    iget-object v1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p1, v2}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1, v1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->writeAndPrepareRead(Ljava/nio/channels/ByteChannel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    sget-object p1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->RECEIVE_RESPONSE_CODE:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    return-void

    :pswitch_2
    invoke-direct {p0, p1, v1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->writeAndPrepareRead(Ljava/nio/channels/ByteChannel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    sget-object p1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->RECEIVE_AUTH:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    return-void

    :pswitch_3
    invoke-direct {p0, p1, v1}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->writeAndPrepareRead(Ljava/nio/channels/ByteChannel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v2}, Lorg/apache/hc/core5/reactor/IOSession;->setEventMask(I)V

    sget-object p1, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;->RECEIVE_AUTH_METHOD:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    iput-object p1, p0, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->state:Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler$State;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public timeout(Lorg/apache/hc/core5/reactor/IOSession;Lorg/apache/hc/core5/util/Timeout;)V
    .locals 0

    invoke-static {p2}, Lorg/apache/hc/core5/io/SocketTimeoutExceptionFactory;->create(Lorg/apache/hc/core5/util/Timeout;)Ljava/net/SocketTimeoutException;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/hc/core5/reactor/SocksProxyProtocolHandler;->exception(Lorg/apache/hc/core5/reactor/IOSession;Ljava/lang/Exception;)V

    return-void
.end method
