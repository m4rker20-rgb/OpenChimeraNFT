.class final Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private collectibleId:J

.field private collectibleStatus:Ljava/lang/Object;

.field private giftCount:I

.field private hasIdentity:Z

.field private localPremium:Z

.field private number:Ljava/lang/String;

.field private pinnedChannel:Lorg/json/JSONObject;

.field private pinnedResolved:Z

.field private pinnedWrapper:Lorg/json/JSONObject;

.field private ratingLevel:I

.field private ratingNextGoal:I

.field private ratingValue:I

.field private source:Lorg/json/JSONObject;

.field private uid:J

.field private usernames:[Ljava/lang/String;

.field private usernamesReplace:Z

.field private wearData:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->usernames:[Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->number:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCollectibleId()J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->collectibleId:J

    return-wide v0
.end method

.method public final getCollectibleStatus()Ljava/lang/Object;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->collectibleStatus:Ljava/lang/Object;

    return-object v0
.end method

.method public final getGiftCount()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->giftCount:I

    return v0
.end method

.method public final getHasIdentity()Z
    .registers 2

    .line 139
    iget-boolean v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->hasIdentity:Z

    return v0
.end method

.method public final getLocalPremium()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->localPremium:Z

    return v0
.end method

.method public final getNumber()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinnedChannel()Lorg/json/JSONObject;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->pinnedChannel:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getPinnedResolved()Z
    .registers 2

    .line 162
    iget-boolean v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->pinnedResolved:Z

    return v0
.end method

.method public final getPinnedWrapper()Lorg/json/JSONObject;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->pinnedWrapper:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getRatingLevel()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->ratingLevel:I

    return v0
.end method

.method public final getRatingNextGoal()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->ratingNextGoal:I

    return v0
.end method

.method public final getRatingValue()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->ratingValue:I

    return v0
.end method

.method public final getSource()Lorg/json/JSONObject;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->source:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getUid()J
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->uid:J

    return-wide v0
.end method

.method public final getUsernames()[Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->usernames:[Ljava/lang/String;

    return-object v0
.end method

.method public final getUsernamesReplace()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->usernamesReplace:Z

    return v0
.end method

.method public final getWearData()Lorg/json/JSONObject;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->wearData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final setCollectibleId(J)V
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->collectibleId:J

    return-void
.end method

.method public final setCollectibleStatus(Ljava/lang/Object;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->collectibleStatus:Ljava/lang/Object;

    return-void
.end method

.method public final setGiftCount(I)V
    .registers 2

    .line 149
    iput p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->giftCount:I

    return-void
.end method

.method public final setHasIdentity(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->hasIdentity:Z

    return-void
.end method

.method public final setLocalPremium(Z)V
    .registers 2

    .line 150
    iput-boolean p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->localPremium:Z

    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->number:Ljava/lang/String;

    return-void
.end method

.method public final setPinnedChannel(Lorg/json/JSONObject;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->pinnedChannel:Lorg/json/JSONObject;

    return-void
.end method

.method public final setPinnedResolved(Z)V
    .registers 2

    .line 162
    iput-boolean p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->pinnedResolved:Z

    return-void
.end method

.method public final setPinnedWrapper(Lorg/json/JSONObject;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->pinnedWrapper:Lorg/json/JSONObject;

    return-void
.end method

.method public final setRatingLevel(I)V
    .registers 2

    .line 147
    iput p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->ratingLevel:I

    return-void
.end method

.method public final setRatingNextGoal(I)V
    .registers 2

    .line 148
    iput p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->ratingNextGoal:I

    return-void
.end method

.method public final setRatingValue(I)V
    .registers 2

    .line 146
    iput p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->ratingValue:I

    return-void
.end method

.method public final setSource(Lorg/json/JSONObject;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->source:Lorg/json/JSONObject;

    return-void
.end method

.method public final setUid(J)V
    .registers 3

    .line 137
    iput-wide p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->uid:J

    return-void
.end method

.method public final setUsernames([Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->usernames:[Ljava/lang/String;

    return-void
.end method

.method public final setUsernamesReplace(Z)V
    .registers 2

    .line 144
    iput-boolean p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->usernamesReplace:Z

    return-void
.end method

.method public final setWearData(Lorg/json/JSONObject;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/chimeranft/core/RemoteIdentity$PreparedProfile;->wearData:Lorg/json/JSONObject;

    return-void
.end method
