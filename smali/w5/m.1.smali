.class public final Lw5/m;
.super Lw5/F;


# static fields
.field public static final c:Lw5/t;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lw5/t;->d:Ljava/util/regex/Pattern;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, LH3/u0;->n(Ljava/lang/String;)Lw5/t;

    move-result-object v0

    sput-object v0, Lw5/m;->c:Lw5/t;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lx5/b;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lw5/m;->a:Ljava/util/List;

    invoke-static {p2}, Lx5/b;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lw5/m;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(LK5/h;Z)J
    .locals 4

    if-eqz p2, :cond_0

    new-instance p1, LK5/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, LK5/h;->getBuffer()LK5/g;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lw5/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    if-lez v2, :cond_1

    const/16 v3, 0x26

    invoke-virtual {p1, v3}, LK5/g;->G(I)V

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, LK5/g;->L(Ljava/lang/String;)V

    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, LK5/g;->G(I)V

    iget-object v3, p0, Lw5/m;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, LK5/g;->L(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-wide v0, p1, LK5/g;->q:J

    invoke-virtual {p1}, LK5/g;->a()V

    return-wide v0

    :cond_3
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final contentLength()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lw5/m;->a(LK5/h;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lw5/t;
    .locals 1

    sget-object v0, Lw5/m;->c:Lw5/t;

    return-object v0
.end method

.method public final writeTo(LK5/h;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw5/m;->a(LK5/h;Z)J

    return-void
.end method
