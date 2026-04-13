.class Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/j;Lp4/a;)Lcom/google/gson/v;
    .locals 1

    iget-object p2, p2, Lp4/a;->a:Ljava/lang/Class;

    const-class v0, Ljava/sql/Timestamp;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp4/a;

    const-class v0, Ljava/util/Date;

    invoke-direct {p2, v0}, Lp4/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->e(Lp4/a;)Lcom/google/gson/v;

    move-result-object p1

    new-instance p2, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;

    invoke-direct {p2, p1}, Lcom/google/gson/internal/sql/SqlTimestampTypeAdapter;-><init>(Lcom/google/gson/v;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
