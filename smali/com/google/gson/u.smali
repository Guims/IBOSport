.class public abstract enum Lcom/google/gson/u;
.super Ljava/lang/Enum;


# static fields
.field public static final enum b:Lcom/google/gson/q;

.field public static final enum q:Lcom/google/gson/r;

.field public static final synthetic r:[Lcom/google/gson/u;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/gson/q;

    invoke-direct {v0}, Lcom/google/gson/q;-><init>()V

    sput-object v0, Lcom/google/gson/u;->b:Lcom/google/gson/q;

    new-instance v1, Lcom/google/gson/r;

    invoke-direct {v1}, Lcom/google/gson/r;-><init>()V

    sput-object v1, Lcom/google/gson/u;->q:Lcom/google/gson/r;

    new-instance v2, Lcom/google/gson/s;

    invoke-direct {v2}, Lcom/google/gson/s;-><init>()V

    new-instance v3, Lcom/google/gson/t;

    invoke-direct {v3}, Lcom/google/gson/t;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/gson/u;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lcom/google/gson/u;->r:[Lcom/google/gson/u;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/u;
    .locals 1

    const-class v0, Lcom/google/gson/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/u;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/u;
    .locals 1

    sget-object v0, Lcom/google/gson/u;->r:[Lcom/google/gson/u;

    invoke-virtual {v0}, [Lcom/google/gson/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/u;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lq4/a;)Ljava/lang/Number;
.end method
