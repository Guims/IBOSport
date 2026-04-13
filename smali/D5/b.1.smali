.class public final LD5/b;
.super Ljava/lang/Object;


# static fields
.field public static final d:LK5/j;

.field public static final e:LK5/j;

.field public static final f:LK5/j;

.field public static final g:LK5/j;

.field public static final h:LK5/j;

.field public static final i:LK5/j;


# instance fields
.field public final a:I

.field public final b:LK5/j;

.field public final c:LK5/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LK5/j;->s:LK5/j;

    const-string v0, ":"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LD5/b;->d:LK5/j;

    const-string v0, ":status"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LD5/b;->e:LK5/j;

    const-string v0, ":method"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LD5/b;->f:LK5/j;

    const-string v0, ":path"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LD5/b;->g:LK5/j;

    const-string v0, ":scheme"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LD5/b;->h:LK5/j;

    const-string v0, ":authority"

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    sput-object v0, LD5/b;->i:LK5/j;

    return-void
.end method

.method public constructor <init>(LK5/j;LK5/j;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/b;->b:LK5/j;

    iput-object p2, p0, LD5/b;->c:LK5/j;

    invoke-virtual {p1}, LK5/j;->b()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, LK5/j;->b()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, LD5/b;->a:I

    return-void
.end method

.method public constructor <init>(LK5/j;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LK5/j;->s:LK5/j;

    invoke-static {p2}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LD5/b;-><init>(LK5/j;LK5/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LK5/j;->s:LK5/j;

    invoke-static {p1}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object p1

    invoke-static {p2}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LD5/b;-><init>(LK5/j;LK5/j;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, LD5/b;

    if-eqz v0, :cond_0

    check-cast p1, LD5/b;

    iget-object v0, p0, LD5/b;->b:LK5/j;

    iget-object v1, p1, LD5/b;->b:LK5/j;

    invoke-static {v0, v1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/b;->c:LK5/j;

    iget-object p1, p1, LD5/b;->c:LK5/j;

    invoke-static {v0, p1}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LD5/b;->b:LK5/j;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LK5/j;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, LD5/b;->c:LK5/j;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, LK5/j;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LD5/b;->b:LK5/j;

    invoke-virtual {v1}, LK5/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LD5/b;->c:LK5/j;

    invoke-virtual {v1}, LK5/j;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
