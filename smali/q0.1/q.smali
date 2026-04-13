.class public final Lq0/q;
.super Ljava/lang/Object;


# static fields
.field public static final d:Lq0/q;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq0/p;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x1f

    const-string v2, ""

    if-ge v0, v1, :cond_0

    new-instance v0, Lq0/q;

    invoke-direct {v0, v2}, Lq0/q;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lq0/q;

    sget-object v1, Lq0/p;->b:Lq0/p;

    invoke-direct {v0, v1, v2}, Lq0/q;-><init>(Lq0/p;Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lq0/q;->d:Lq0/q;

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lq0/p;

    invoke-direct {v0, p1}, Lq0/p;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0, p2}, Lq0/q;-><init>(Lq0/p;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Lq0/q;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lq0/q;->b:Lq0/p;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/q;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq0/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/q;->b:Lq0/p;

    iput-object p2, p0, Lq0/q;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/q;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lq0/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lq0/q;

    iget-object v1, p0, Lq0/q;->a:Ljava/lang/String;

    iget-object v3, p1, Lq0/q;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lq0/q;->b:Lq0/p;

    iget-object v3, p1, Lq0/q;->b:Lq0/p;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lq0/q;->c:Ljava/lang/Object;

    iget-object p1, p1, Lq0/q;->c:Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lq0/q;->b:Lq0/p;

    iget-object v1, p0, Lq0/q;->c:Ljava/lang/Object;

    iget-object v2, p0, Lq0/q;->a:Ljava/lang/String;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
