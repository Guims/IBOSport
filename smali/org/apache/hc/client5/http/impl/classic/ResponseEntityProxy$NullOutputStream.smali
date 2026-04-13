.class final Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NullOutputStream"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;

    invoke-direct {v0}, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;-><init>()V

    sput-object v0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;->INSTANCE:Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;
    .locals 1

    sget-object v0, Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;->INSTANCE:Lorg/apache/hc/client5/http/impl/classic/ResponseEntityProxy$NullOutputStream;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NullOutputStream{}"

    return-object v0
.end method

.method public write(I)V
    .locals 0

    return-void
.end method

.method public write([B)V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 0

    return-void
.end method
