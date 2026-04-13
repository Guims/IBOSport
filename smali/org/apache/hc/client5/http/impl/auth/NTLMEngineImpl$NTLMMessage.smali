.class Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NTLMMessage"
.end annotation


# instance fields
.field currentOutputPosition:I

.field messageContents:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1600()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/hc/client5/http/utils/Base64;->decodeBase64([B)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length p1, p1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1700()[B

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_3

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1700()[B

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    aget-byte v0, v0, p1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1700()[B

    move-result-object v1

    aget-byte v1, v1, p1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    const-string p2, "NTLM message expected - instead got unrecognized bytes"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1700()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->readULong(I)I

    move-result p1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length p1, p1

    iput p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return-void

    :cond_2
    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    const-string v1, "NTLM type "

    const-string v2, " message expected - instead got type "

    invoke-static {p2, p1, v1, v2}, LB/f;->l(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    const-string p2, "NTLM message decoding error - packet too short"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addByte(B)V
    .locals 2

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    iget v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return-void
.end method

.method public addBytes([B)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p1, v1

    iget-object v3, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    iget v4, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public addULong(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    return-void
.end method

.method public addUShort(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addByte(B)V

    return-void
.end method

.method public buildMessage()V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Message builder not implemented for "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytes()[B
    .locals 4

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->buildMessage()V

    :cond_0
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v1, v0

    iget v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    if-le v1, v2, :cond_1

    new-array v1, v2, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    :cond_1
    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    return-object v0
.end method

.method public getMessageLength()I
    .locals 1

    iget v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    return v0
.end method

.method public getPreambleLength()I
    .locals 1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1700()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/hc/client5/http/utils/Base64;->encodeBase64([B)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public prepareResponse(II)V
    .locals 0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1700()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    invoke-virtual {p0, p2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    return-void
.end method

.method public readByte(I)B
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v1, v0

    add-int/lit8 v2, p1, 0x1

    if-lt v1, v2, :cond_0

    aget-byte p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    const-string v0, "NTLM: Message too short"

    invoke-direct {p1, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBytes([BI)V
    .locals 3

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    const-string p2, "NTLM: Message too short"

    invoke-direct {p1, p2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readSecurityBuffer(I)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$2000([BI)[B

    move-result-object p1

    return-object p1
.end method

.method public readULong(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1900([BI)I

    move-result p1

    return p1
.end method

.method public readUShort(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$1800([BI)I

    move-result p1

    return p1
.end method
