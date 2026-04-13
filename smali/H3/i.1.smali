.class public final LH3/i;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:LH3/i;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;

.field public static final h:LR3/c;

.field public static final i:LR3/c;

.field public static final j:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH3/i;->a:LH3/i;

    const-string v0, "arch"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->b:LR3/c;

    const-string v0, "model"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->c:LR3/c;

    const-string v0, "cores"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->d:LR3/c;

    const-string v0, "ram"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->e:LR3/c;

    const-string v0, "diskSpace"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->f:LR3/c;

    const-string v0, "simulator"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->g:LR3/c;

    const-string v0, "state"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->h:LR3/c;

    const-string v0, "manufacturer"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->i:LR3/c;

    const-string v0, "modelClass"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, LH3/i;->j:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, LH3/w0;

    check-cast p2, LR3/e;

    check-cast p1, LH3/N;

    iget v0, p1, LH3/N;->a:I

    sget-object v1, LH3/i;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/i;->c:LR3/c;

    iget-object v1, p1, LH3/N;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/i;->d:LR3/c;

    iget v1, p1, LH3/N;->c:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/i;->e:LR3/c;

    iget-wide v1, p1, LH3/N;->d:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/i;->f:LR3/c;

    iget-wide v1, p1, LH3/N;->e:J

    invoke-interface {p2, v0, v1, v2}, LR3/e;->e(LR3/c;J)LR3/e;

    sget-object v0, LH3/i;->g:LR3/c;

    iget-boolean v1, p1, LH3/N;->f:Z

    invoke-interface {p2, v0, v1}, LR3/e;->b(LR3/c;Z)LR3/e;

    sget-object v0, LH3/i;->h:LR3/c;

    iget v1, p1, LH3/N;->g:I

    invoke-interface {p2, v0, v1}, LR3/e;->c(LR3/c;I)LR3/e;

    sget-object v0, LH3/i;->i:LR3/c;

    iget-object v1, p1, LH3/N;->h:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, LH3/i;->j:LR3/c;

    iget-object p1, p1, LH3/N;->i:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
