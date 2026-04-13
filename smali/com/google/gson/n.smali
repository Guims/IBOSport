.class public final Lcom/google/gson/n;
.super Lcom/google/gson/l;


# static fields
.field public static final b:Lcom/google/gson/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/gson/n;->b:Lcom/google/gson/n;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/gson/n;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lcom/google/gson/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
