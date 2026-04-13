.class public final enum Lorg/apache/hc/core5/http/Method;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/hc/core5/http/Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/hc/core5/http/Method;

.field public static final enum CONNECT:Lorg/apache/hc/core5/http/Method;

.field public static final enum DELETE:Lorg/apache/hc/core5/http/Method;

.field public static final enum GET:Lorg/apache/hc/core5/http/Method;

.field public static final enum HEAD:Lorg/apache/hc/core5/http/Method;

.field public static final enum OPTIONS:Lorg/apache/hc/core5/http/Method;

.field public static final enum PATCH:Lorg/apache/hc/core5/http/Method;

.field public static final enum POST:Lorg/apache/hc/core5/http/Method;

.field public static final enum PUT:Lorg/apache/hc/core5/http/Method;

.field public static final enum TRACE:Lorg/apache/hc/core5/http/Method;


# instance fields
.field private final idempotent:Z

.field private final safe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lorg/apache/hc/core5/http/Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/apache/hc/core5/http/Method;->GET:Lorg/apache/hc/core5/http/Method;

    new-instance v1, Lorg/apache/hc/core5/http/Method;

    const-string v4, "HEAD"

    invoke-direct {v1, v4, v3, v3, v3}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lorg/apache/hc/core5/http/Method;->HEAD:Lorg/apache/hc/core5/http/Method;

    move v4, v2

    new-instance v2, Lorg/apache/hc/core5/http/Method;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4, v4}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v2, Lorg/apache/hc/core5/http/Method;->POST:Lorg/apache/hc/core5/http/Method;

    move v5, v3

    new-instance v3, Lorg/apache/hc/core5/http/Method;

    const-string v6, "PUT"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lorg/apache/hc/core5/http/Method;->PUT:Lorg/apache/hc/core5/http/Method;

    move v6, v4

    new-instance v4, Lorg/apache/hc/core5/http/Method;

    const-string v7, "DELETE"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v6, v5}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lorg/apache/hc/core5/http/Method;->DELETE:Lorg/apache/hc/core5/http/Method;

    move v7, v5

    new-instance v5, Lorg/apache/hc/core5/http/Method;

    const-string v8, "CONNECT"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6, v6}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lorg/apache/hc/core5/http/Method;->CONNECT:Lorg/apache/hc/core5/http/Method;

    move v8, v6

    new-instance v6, Lorg/apache/hc/core5/http/Method;

    const-string v9, "TRACE"

    const/4 v10, 0x6

    invoke-direct {v6, v9, v10, v7, v7}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v6, Lorg/apache/hc/core5/http/Method;->TRACE:Lorg/apache/hc/core5/http/Method;

    move v9, v7

    new-instance v7, Lorg/apache/hc/core5/http/Method;

    const-string v10, "OPTIONS"

    const/4 v11, 0x7

    invoke-direct {v7, v10, v11, v9, v9}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Lorg/apache/hc/core5/http/Method;->OPTIONS:Lorg/apache/hc/core5/http/Method;

    move v9, v8

    new-instance v8, Lorg/apache/hc/core5/http/Method;

    const-string v10, "PATCH"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9, v9}, Lorg/apache/hc/core5/http/Method;-><init>(Ljava/lang/String;IZZ)V

    sput-object v8, Lorg/apache/hc/core5/http/Method;->PATCH:Lorg/apache/hc/core5/http/Method;

    filled-new-array/range {v0 .. v8}, [Lorg/apache/hc/core5/http/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/hc/core5/http/Method;->$VALUES:[Lorg/apache/hc/core5/http/Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lorg/apache/hc/core5/http/Method;->safe:Z

    iput-boolean p4, p0, Lorg/apache/hc/core5/http/Method;->idempotent:Z

    return-void
.end method

.method public static isIdempotent(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/hc/core5/http/Method;->normalizedValueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;

    move-result-object p0

    iget-boolean p0, p0, Lorg/apache/hc/core5/http/Method;->idempotent:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isSafe(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/hc/core5/http/Method;->normalizedValueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;

    move-result-object p0

    iget-boolean p0, p0, Lorg/apache/hc/core5/http/Method;->safe:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static normalizedValueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;
    .locals 1

    const-string v0, "method"

    invoke-static {p0, v0}, Lorg/apache/hc/core5/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/hc/core5/http/Method;->valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/hc/core5/http/Method;
    .locals 1

    const-class v0, Lorg/apache/hc/core5/http/Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/hc/core5/http/Method;

    return-object p0
.end method

.method public static values()[Lorg/apache/hc/core5/http/Method;
    .locals 1

    sget-object v0, Lorg/apache/hc/core5/http/Method;->$VALUES:[Lorg/apache/hc/core5/http/Method;

    invoke-virtual {v0}, [Lorg/apache/hc/core5/http/Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/hc/core5/http/Method;

    return-object v0
.end method


# virtual methods
.method public isIdempotent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/Method;->idempotent:Z

    return v0
.end method

.method public isSafe()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/hc/core5/http/Method;->safe:Z

    return v0
.end method

.method public isSame(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
