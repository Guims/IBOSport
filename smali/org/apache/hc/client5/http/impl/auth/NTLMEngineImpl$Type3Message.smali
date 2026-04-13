.class Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;
.super Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type3Message"
.end annotation


# instance fields
.field final computeMic:Z

.field final domainBytes:[B

.field final exportedSessionKey:[B

.field final hostBytes:[B

.field lmResp:[B

.field ntResp:[B

.field final sessionKey:[B

.field final type1Message:[B

.field final type2Flags:I

.field final type2Message:[B

.field final userBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[BILjava/lang/String;[B)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 15

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$2300()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[BILjava/lang/String;[B)V
    .locals 15

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[C[BILjava/lang/String;[BLjava/security/cert/Certificate;[B[B)V
    .locals 14

    move-object/from16 v10, p5

    move/from16 v11, p9

    move-object/from16 v12, p11

    move-object/from16 v0, p12

    invoke-direct {p0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    if-eqz p1, :cond_c

    iput v11, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    move-object/from16 v1, p13

    iput-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->type1Message:[B

    move-object/from16 v1, p14

    iput-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Message:[B

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v12, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->addGssMicAvsToTargetInfo([BLjava/security/cert/Certificate;)[B

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    move-object v9, v0

    goto :goto_0

    :cond_0
    iput-boolean v13, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    move-object v9, v12

    :goto_0
    new-instance v0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v9}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/util/Random;JLjava/lang/String;Ljava/lang/String;[C[BLjava/lang/String;[B)V

    const/high16 p1, 0x800000

    and-int/2addr p1, v11

    if-eqz p1, :cond_2

    if-eqz v12, :cond_2

    if-eqz p10, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, v11, 0x80

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object p1

    goto :goto_1

    :cond_2
    const/high16 p1, 0x80000

    and-int/2addr p1, v11

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, v11, 0x80

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, v11, 0x80

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v13, [B

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 p1, v11, 0x80

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object p1

    :goto_1
    and-int/lit8 v1, v11, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v11

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    invoke-static {v0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->RC4([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_2

    :cond_7
    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    goto :goto_2

    :cond_8
    iget-boolean p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-nez p1, :cond_b

    iput-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    iput-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    :goto_2
    invoke-static {v11}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$2200(I)Ljava/nio/charset/Charset;

    move-result-object p1

    if-eqz v10, :cond_9

    invoke-virtual {v10, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v4, :cond_a

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :cond_a
    iput-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    move-object/from16 v5, p6

    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    return-void

    :cond_b
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    const-string v0, "Cannot sign/seal: no exported session key"

    invoke-direct {p1, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    const-string v0, "Random generator not available"

    invoke-direct {p1, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addGssMicAvsToTargetInfo([BLjava/security/cert/Certificate;)[B
    .locals 7

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1c

    new-array v0, v0, [B

    array-length v1, p1

    add-int/lit8 v2, v1, -0x4

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x6

    invoke-static {v0, p1, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    add-int/lit8 p1, v1, -0x2

    const/4 v2, 0x4

    invoke-static {v0, v2, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    const/4 p1, 0x2

    invoke-static {v0, p1, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    add-int/lit8 p1, v1, 0x4

    const/16 v2, 0xa

    invoke-static {v0, v2, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    add-int/lit8 p1, v1, 0x6

    const/16 v2, 0x10

    invoke-static {v0, v2, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->writeUShort([BII)V

    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    const-string p2, "SHA-256"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$2400()[B

    move-result-object p2

    array-length p2, p2

    const/16 v4, 0x14

    add-int/2addr p2, v4

    array-length v5, p1

    add-int/2addr p2, v5

    new-array p2, p2, [B

    const/16 v5, 0x35

    invoke-static {p2, v5, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$2400()[B

    move-result-object v5

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$2400()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v3, p2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->access$2400()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v4

    array-length v4, p1

    invoke-static {p1, v3, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl;->getMD5()Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public buildMessage()V
    .locals 15

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-object v4, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v4, :cond_1

    array-length v4, v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v6, :cond_2

    array-length v6, v6

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-boolean v7, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v7, :cond_3

    const/16 v7, 0x10

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    add-int/lit8 v7, v7, 0x48

    add-int v8, v7, v1

    add-int v9, v8, v0

    add-int v10, v9, v2

    add-int v11, v10, v5

    add-int v12, v11, v4

    add-int v13, v12, v6

    const/4 v14, 0x3

    invoke-virtual {p0, v13, v14}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->prepareResponse(II)V

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v7}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v8}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v9}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v5}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v5}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v10}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v4}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v4}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v11}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    invoke-virtual {p0, v6}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v6}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    invoke-virtual {p0, v12}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    iget v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addULong(I)V

    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addUShort(I)V

    iget-boolean v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    add-int/lit8 v1, v0, 0x10

    iput v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->currentOutputPosition:I

    goto :goto_4

    :cond_4
    const/4 v0, -0x1

    :goto_4
    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    iget-object v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->addBytes([B)V

    :cond_5
    iget-boolean v1, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->computeMic:Z

    if-eqz v1, :cond_6

    new-instance v1, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$HMACMD5;

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    invoke-direct {v1, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$HMACMD5;-><init>([B)V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->type1Message:[B

    invoke-virtual {v1, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Message:[B

    invoke-virtual {v1, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    invoke-virtual {v1, v2}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$HMACMD5;->update([B)V

    invoke-virtual {v1}, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$HMACMD5;->getOutput()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$NTLMMessage;->messageContents:[B

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-void
.end method

.method public getEncryptedRandomSessionKey()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getExportedSessionKey()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/hc/client5/http/impl/auth/NTLMEngineImpl$Type3Message;->exportedSessionKey:[B

    return-object v0
.end method
