.class final enum Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

.field public static final enum CHUNK_CRLF:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

.field public static final enum CHUNK_DATA:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

.field public static final enum CHUNK_INVALID:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

.field public static final enum CHUNK_LEN:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    const-string v1, "CHUNK_LEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;->CHUNK_LEN:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    new-instance v1, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    const-string v2, "CHUNK_DATA"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;->CHUNK_DATA:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    new-instance v2, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    const-string v3, "CHUNK_CRLF"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;->CHUNK_CRLF:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    new-instance v3, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    const-string v4, "CHUNK_INVALID"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;->CHUNK_INVALID:Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;->$VALUES:[Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;->$VALUES:[Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/impl/io/ChunkedInputStream$State;

    return-object v0
.end method
