.class public interface abstract Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;
.super Ljava/lang/Object;


# static fields
.field public static final EVEN:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

.field public static final ODD:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator$1;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator$1;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->ODD:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    new-instance v0, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator$2;

    invoke-direct {v0}, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator$2;-><init>()V

    sput-object v0, Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;->EVEN:Lorg/apache/hc/core5/http2/frame/StreamIdGenerator;

    return-void
.end method


# virtual methods
.method public abstract generate(I)I
.end method

.method public abstract isSameSide(I)Z
.end method
