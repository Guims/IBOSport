.class public final Li2/b;
.super Ljava/lang/Object;

# interfaces
.implements LR3/d;


# static fields
.field public static final a:Li2/b;

.field public static final b:LR3/c;

.field public static final c:LR3/c;

.field public static final d:LR3/c;

.field public static final e:LR3/c;

.field public static final f:LR3/c;

.field public static final g:LR3/c;

.field public static final h:LR3/c;

.field public static final i:LR3/c;

.field public static final j:LR3/c;

.field public static final k:LR3/c;

.field public static final l:LR3/c;

.field public static final m:LR3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/b;->a:Li2/b;

    const-string v0, "sdkVersion"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->b:LR3/c;

    const-string v0, "model"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->c:LR3/c;

    const-string v0, "hardware"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->d:LR3/c;

    const-string v0, "device"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->e:LR3/c;

    const-string v0, "product"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->f:LR3/c;

    const-string v0, "osBuild"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->g:LR3/c;

    const-string v0, "manufacturer"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->h:LR3/c;

    const-string v0, "fingerprint"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->i:LR3/c;

    const-string v0, "locale"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->j:LR3/c;

    const-string v0, "country"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->k:LR3/c;

    const-string v0, "mccMnc"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->l:LR3/c;

    const-string v0, "applicationBuild"

    invoke-static {v0}, LR3/c;->a(Ljava/lang/String;)LR3/c;

    move-result-object v0

    sput-object v0, Li2/b;->m:LR3/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Li2/a;

    check-cast p2, LR3/e;

    check-cast p1, Li2/l;

    iget-object v0, p1, Li2/l;->a:Ljava/lang/Integer;

    sget-object v1, Li2/b;->b:LR3/c;

    invoke-interface {p2, v1, v0}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->c:LR3/c;

    iget-object v1, p1, Li2/l;->b:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->d:LR3/c;

    iget-object v1, p1, Li2/l;->c:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->e:LR3/c;

    iget-object v1, p1, Li2/l;->d:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->f:LR3/c;

    iget-object v1, p1, Li2/l;->e:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->g:LR3/c;

    iget-object v1, p1, Li2/l;->f:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->h:LR3/c;

    iget-object v1, p1, Li2/l;->g:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->i:LR3/c;

    iget-object v1, p1, Li2/l;->h:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->j:LR3/c;

    iget-object v1, p1, Li2/l;->i:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->k:LR3/c;

    iget-object v1, p1, Li2/l;->j:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->l:LR3/c;

    iget-object v1, p1, Li2/l;->k:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    sget-object v0, Li2/b;->m:LR3/c;

    iget-object p1, p1, Li2/l;->l:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, LR3/e;->a(LR3/c;Ljava/lang/Object;)LR3/e;

    return-void
.end method
