.class public Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/hc/client5/http/entity/InputStreamFactory;


# annotations
.annotation build Lorg/apache/hc/core5/annotation/Contract;
    threading = .enum Lorg/apache/hc/core5/annotation/ThreadingBehavior;->STATELESS:Lorg/apache/hc/core5/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;->INSTANCE:Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;->INSTANCE:Lorg/apache/hc/client5/http/entity/DeflateInputStreamFactory;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/entity/DeflateInputStream;

    invoke-direct {v0, p1}, Lorg/apache/hc/client5/http/entity/DeflateInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
