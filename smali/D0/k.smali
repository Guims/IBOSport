.class public final LD0/k;
.super Landroidx/media3/common/TrackSelectionParameters$Builder;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:Landroid/util/SparseArray;

.field public final i:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LD0/k;->h:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, LD0/k;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, LD0/k;->a()V

    return-void
.end method

.method public constructor <init>(LD0/l;)V
    .locals 6

    invoke-direct {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-boolean v0, p1, LD0/l;->a:Z

    iput-boolean v0, p0, LD0/k;->a:Z

    iget-boolean v0, p1, LD0/l;->b:Z

    iput-boolean v0, p0, LD0/k;->b:Z

    iget-boolean v0, p1, LD0/l;->c:Z

    iput-boolean v0, p0, LD0/k;->c:Z

    iget-boolean v0, p1, LD0/l;->d:Z

    iput-boolean v0, p0, LD0/k;->d:Z

    iget-boolean v0, p1, LD0/l;->e:Z

    iput-boolean v0, p0, LD0/k;->e:Z

    iget-boolean v0, p1, LD0/l;->f:Z

    iput-boolean v0, p0, LD0/k;->f:Z

    iget-boolean v0, p1, LD0/l;->g:Z

    iput-boolean v0, p0, LD0/k;->g:Z

    iget-object v0, p1, LD0/l;->h:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, LD0/k;->h:Landroid/util/SparseArray;

    iget-object p1, p1, LD0/l;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, LD0/k;->i:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LD0/k;->h:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, LD0/k;->i:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, LD0/k;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LD0/k;->a:Z

    iput-boolean v0, p0, LD0/k;->b:Z

    iput-boolean v0, p0, LD0/k;->c:Z

    iput-boolean v0, p0, LD0/k;->d:Z

    iput-boolean v0, p0, LD0/k;->e:Z

    iput-boolean v0, p0, LD0/k;->f:Z

    iput-boolean v0, p0, LD0/k;->g:Z

    return-void
.end method

.method public final addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final b(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-void
.end method

.method public final build()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    new-instance v0, LD0/l;

    invoke-direct {v0, p0}, LD0/l;-><init>(LD0/k;)V

    return-object v0
.end method

.method public final clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverride(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final clearVideoSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearVideoSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final clearViewportSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearViewportSizeConstraints()Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->set(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setAudioOffloadPreferences(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setAudioOffloadPreferences(Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setDisabledTrackTypes(Ljava/util/Set;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setForceLowestBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setForceLowestBitrate(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setIgnoredTextSelectionFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setIgnoredTextSelectionFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMaxAudioBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMaxAudioBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMaxAudioChannelCount(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMaxAudioChannelCount(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMaxVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMaxVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMaxVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMaxVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMaxVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMaxVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMaxVideoSizeSd()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMaxVideoSizeSd()Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMinVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMinVideoBitrate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMinVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMinVideoFrameRate(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setMinVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setMinVideoSize(II)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setOverrideForType(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredAudioMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredAudioRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredAudioRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredTextRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredTextRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPreferredVideoRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPreferredVideoRoleFlags(I)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setPrioritizeImageOverVideoEnabled(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setPrioritizeImageOverVideoEnabled(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setSelectUndeterminedTextLanguage(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setViewportSize(IIZ)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setViewportSize(IIZ)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public final setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Landroidx/media3/common/TrackSelectionParameters$Builder;

    return-object p0
.end method
